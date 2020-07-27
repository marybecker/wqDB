import mysql_connector as msc
import xlrd
from datetime import datetime
import os

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

# insert data from excel into table one line at a time.  generate an error rpt
ftp = 'C:/Users/deepuser/Documents/testFTP/'
folder = 'Upload/'
type = 'Stations/'
fdir = os.listdir(ftp+folder+type)


SQLinsert = 'INSERT INTO awqx.stations (staSeq,locationName, locationDescription, locationType, ylat, xlong, ' \
            'sourceMapScale, horizCollectMethod, horizRefDatum, stateCd, munName, subBasin, adbSegID, ' \
            'createUser, createDate)  VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);'
SQLerrLog = 'INSERT INTO awqx.errlog VALUES (?,?,?,?,?,?);'
SQLselect = 'SELECT Max(staSeq) + 1 FROM awqx.stations;'


with msc.MYSQL('localhost', 'test', 3306, 'pyuser', 'test') as dbo:
    res = dbo.query(SQLselect)

# print('found %s files to process: %s' % (len(fdir), fdir))

try:
    for file in fdir:
        db_err = []
        print('processing file=%s' % file)
        uploadDate = datetime.today().strftime('%m%d%Y_%H%M%S_')
        fpathIn = ftp + folder + type + file
        fpathErr = ftp + 'ErrRpts/' + file + 'QcRpt.csv'
        fpathOut = ftp + 'UploadedRpts/' + uploadDate + file
        raw = readXlsx(fpathIn, db_err)
        os.rename(fpathIn, fpathOut)

        if raw is not None:
            with msc.MYSQL('localhost', 'awqx', 3306, 'pyuser', 'test') as dbo:
                insDate = datetime.today().strftime('%Y-%m-%d %H:%M:%S')

                # Insert into the database line by line.  Append DB error if not caught by qc checks.
                for i in range(len(raw)):
                    autoN = dbo.query(SQLselect)
                    ins = dbo.query(SQLinsert, list(autoN[0].values())+raw[i]+[insDate])
                    if ins != {}:
                        print('error with file %s on row %s, err=%s' % (file, i, ins[sorted(ins)[0]]))
                        err = [folder[0:-1],type[0:-1],file,insDate,i,ins[sorted(ins)[0]]]
                        dbErr = dbo.query(SQLerrLog,err)
                        db_err += [[file, i, raw[0], ins[sorted(ins)[0]]]]
                    else:
                        print('success with file %s on row %s' % (file, i))

                s = '\n'.join([','.join([str(e) for e in row]) for row in db_err])
                with open(fpathErr, 'w') as f: f.write(s)
        else:
            print('File Error - Not uploaded')
            s = '\n'.join([','.join([str(e) for e in row]) for row in db_err])
            with open(fpathErr, 'w') as f:
                f.write(s)
except FileNotFoundError as e:
    print(e)



