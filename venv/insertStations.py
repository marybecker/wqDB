import mysql_connector as msc
import xlrd
from datetime import datetime
import os
import glob

# SQLselect = 'SELECT Name FROM awqx.monitoringlocationtype;'
#
# # Import FKs from DB need for testing
# WaterType, HorizCollectMethod = {}, {}
# with msc.MYSQL('localhost', 'test', 3306, 'pyuser', 'test') as dbo:
#     WaterType = dbo.query('SELECT Name FROM awqx.monitoringlocationtype;')
#     HorizCollectMethod = dbo.query('SELECT Name FROM awqx.horizontalcollectionmethod;')
#
# RT = []
# for i in range(len(WaterType)):
#     RT += WaterType[i].values()

# function to read in xlsx file
def readXlsx(file,errFile):
    if file.endswith(".xlsm") or file.endswith(".xlsx"):
        try:
            with xlrd.open_workbook(file) as f:
                sheet = f.sheet_by_index(0)  # could also use sheet_by_name("Sheet1")
                raw = [[sheet.cell_value(r, c) for c in range(sheet.ncols)] for r in range(sheet.nrows)[1:]]
            return raw
        except FileNotFoundError as e:
            print(e)
    else:
        errFile += [[file, 'Incorrect File Type']]

# function to qc data before inserting to DB and create a list of any errors
# def qcData (raw,RT):
#     data, err = [], []
#     ## Filter out garbage data
#     for i in range(len(raw)):
#         if raw[i][0] != '' and raw[i][2] != '' and raw[i][3] != '' and raw[i][4] != '' and raw[i][5] != '' and \
#                 raw[i][6] != '' and raw[i][7] != '' and raw[i][8] != '' and raw[i][9] != '' and raw[i][10] != '' and \
#                 raw[i][12] != '' and raw[i][2] in RT and -73.6 <= raw[i][4] <= -71.8 and 40.9 <= raw[i][3] <= 42.11 and\
#                 len(raw[i]) == 13:
#             data += [raw[i]]
#         else:
#             err += [raw[i]]
#             j = len(err)-1
#             err[j].append('Row' + str(i + 1))
#
#     ## Create Error Report
#     for i in range(len(err)):
#         # Check for required (can not be null) values
#         if err[i][0] == '' or err[i][2] == '' or err[i][3] == '' or err[i][4] == '' or err[i][5] == '' or \
#                 err[i][6] == '' or err[i][7] == '' or err[i][8] == '' or err[i][9] == '' or err[i][10] == '' or \
#                 err[i][12] == '':
#             err[i][13] += ', Missing Required Value'
#         # Check for foreign key constraint values
#         if err[i][2] not in RT:
#             err[i][13] += ', ' + err[i][2] + '- Incorrect Value'
#         # Check to see if the lat lng is outside of the CT region
#         if err[i][4] == '' or err[i][3] == '' or -73.6 <= float(err[i][4]) or float(err[i][4]) >= -71.8 \
#                 or 40.9 <= float(err[i][3]) or float(err[i][3]) >= 42.11:
#             err[i][13] += ', Lat / Long Out of Bounds'
#         else:
#             err[i][13] += ', Other Error'
#     return data, err

# insert data from excel into table one line at a time.  generate an error rpt
ftp = 'C:/Users/deepuser/Documents/testFTP/'
folder = 'SitesUpload/'
fdir = os.listdir(ftp+folder)


SQLinsert = 'INSERT INTO awqx.stations (staSeq,locationName, locationDescription, locationType, ylat, xlong, ' \
            'sourceMapScale, horizCollectMethod, horizRefDatum, stateCd, munName, subBasin, adbSegID, ' \
            'createUser, createDate)  VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);'
SQLselect = 'SELECT Max(staSeq) + 1 FROM awqx.stations;'


with msc.MYSQL('localhost', 'test', 3306, 'pyuser', 'test') as dbo:
    res = dbo.query(SQLselect)


# print('found %s files to process: %s' % (len(fdir), fdir))
db_err = []
for file in fdir:
    with msc.MYSQL('localhost', 'awqx', 3306, 'pyuser', 'test') as dbo:
        print('processing file=%s' % file)
        fpathIn = ftp + 'SitesUpload/' + file
        fpathErr = ftp + 'ErrRpts/' + file + 'QcRpt.csv'
        fpathOut = ftp + 'UploadedRpts/' + file
        raw = readXlsx(fpathIn, db_err)
        insDate = datetime.today().strftime('%Y-%m-%d %H:%M:%S')
        os.rename(fpathIn, fpathOut)

        # Insert into the database line by line.  Append DB error if not caught by qc checks.
        for i in range(len(raw)):
            autoN = dbo.query(SQLselect)
            ins = dbo.query(SQLinsert, list(autoN[0].values())+raw[i]+[insDate])
            if ins != {}:
                print('error with file %s on row %s, err=%s' % (file, i, ins[sorted(ins)[0]]))
                db_err += [[file, i, raw[0], ins[sorted(ins)[0]]]]
            else:
                print('success with file %s on row %s' % (file, i))

        s = '\n'.join([','.join([str(e) for e in row]) for row in db_err])
        with open(fpathErr, 'w') as f: f.write(s)


