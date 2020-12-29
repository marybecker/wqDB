import mysql_connector as msc
import xlrd
from datetime import datetime, date
import pytz
import os
import argparse

des = """
------------------------------------------------------------------------------------------
Import Activities into Ambient Water Monitoring Data Exchange (wmdX) water quality database  
Mary Becker - Last Updated 2020-12-28
------------------------------------------------------------------------------------------
Given input directory of excel template spreadsheets with new station information,
automatically checks for constraints with the database schema and produces an
error report for tuples that do not meet the constraints.  Tuples that do meet 
requirements are inserted into the Stations table """

parser = argparse.ArgumentParser(description=des.lstrip(" "), formatter_class=argparse.RawTextHelpFormatter)
parser.add_argument('-i', '--in_dir', type=str, help='input directory of ftp\t[None]')
args = parser.parse_args()

# build args into params...
if args.in_dir is not None:
    in_dir = args.in_dir
else:
    raise IOError


# function to read in xlsx file
def readXlsx(file, errFile):
    if file.endswith(".xlsm") or file.endswith(".xlsx"):
        try:
            with xlrd.open_workbook(file) as f:
                sheet = f.sheet_by_index(0)  # could also use sheet_by_name("Sheet1")
                raw = [[sheet.cell_value(r, c) for c in range(sheet.ncols)[0:17]] for r in range(sheet.nrows)[0:]]
                return raw
        except FileNotFoundError as e:
            print(e)
    else:
        errFile += [[file, 'Incorrect File Type']]


def getActType(ActType):
    if ActType == 'Sample-Routine':
        return 'SR'
    if ActType == 'Field Msr/Obs':
        return 'FM'
    if ActType == 'Quality Control Sample-Field Blank':
        return 'QCFB'
    if ActType == 'Quality Control Sample-Field Replicate':
        return 'QCFR'
    else:
        return 'O'


def get_dst_change_points(y, zone='America/New_York'):
    tz = pytz.timezone(zone)
    trans = tz._utc_transition_times
    T = []
    for t in trans:
        if t.date().year == y:
            T += [t]
    return sorted(T)


# Input should be something like this: is_in_dst(datetime(2020,12,10,0),T)
def is_in_dst(t, T):
    if t >= T[0] and t <= T[1]:
        return 'EDT'
    else:
        return 'EST'


# insert data from excel into table one line at a time.  generate an error rpt
# ftp = in_dir
ftp = 'C:/Users/deepuser/Documents/Projects/ProgramDev/awx/awqx_app/importTestFiles/MBecker/'
folder = 'Upload/'
type = 'Activities/'
fdir = os.listdir(ftp + folder + type)

headerList = ['staSeq', 'ProjectIdentifier', 'ActivityTypeCode', 'ActivityStartDate', 'ActivityTime',
              'SampleCollectionEquipmentCommentText', 'SamplePreparationMethodIdentifier', 'ActivityRelativeDepthName',
              'ActivityDepthMeasureValue', 'ActivityDepthMeasureUnitCode', 'InstreamLocation', 'LabAccession',
              'LaboratoryName', 'ActivityConductingOrganizationText', 'ActivityCommentText', 'ActContactLead',
              'ActFieldCrew']
SQLinsert = 'INSERT INTO awqx.activitychem (staSeq, ProjectIdentifier, ActivityTypeCode, ActivityStartDate, ' \
            'ActivityTime,SampleCollectionEquipmentCommentText, SamplePreparationMethodIdentifier,' \
            'ActivityRelativeDepthName, ActivityDepthMeasureValue, ActivityDepthMeasureUnitCode, ' \
            'InstreamLocation, LabAccession, LaboratoryName, ActivityConductingOrganizationText, ' \
            'ActivityCommentText, ActContactLead, ActFieldCrew, ' \
            'ActivityIdentifier, ActivityMediaName, ActivityMediaSubdivisionName, ActivityTimeZoneCodetimezone, ' \
            'SampleCollectionMethodIdentifier, SampleCollectionEquipmentName, createDate, ' \
            'createUser, lastUpdateDate, lastUpdateUser) ' \
            'VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);'
SQLerrLog = 'INSERT INTO awqx.errlog VALUES (?,?,?,?,?,?);'

with msc.MYSQL('localhost', 'test', 3306, 'pyuser', 'test') as dbo:
    print('found %s files to process: %s' % (len(fdir), fdir))

try:
    for file in fdir:
        db_err = []
        print('processing file=%s' % file)
        uploadDate = datetime.today().strftime('%m%d%Y_%H%M%S_')
        fpathIn = ftp + folder + type + file
        fpathErr = ftp + 'ErrRpts/' + uploadDate + file + 'QcRpt.csv'
        fpathOut = ftp + 'UploadedRpts/' + uploadDate + file
        raw = readXlsx(fpathIn, db_err)
        header = raw[0]  # could use to check header names in the excel file
        raw = raw[1:]
        os.rename(fpathIn, fpathOut)

        if raw is not None and header == headerList:
            with msc.MYSQL('localhost', 'awqx', 3306, 'pyuser', 'test') as dbo:
                insDate = datetime.today().strftime('%Y-%m-%d %H:%M:%S')

                # Insert into the database line by line.  Append DB error if not caught by qc checks.
                for i in range(len(raw)):
                    # generate auto populated fields for grab chemistry
                    actID = str(str(int(raw[i][0])) + '-' + (getActType(raw[i][2])) + '-' + raw[i][3].replace('-', '')
                                + '-' + raw[i][4].replace(':', '') + '-' + 'CHEM-' + str(raw[i][8]) + raw[i][9])
                    actMedia = 'Water'
                    actMediaSub = 'Surface Water'
                    t = datetime.fromisoformat(raw[0][3])
                    T = get_dst_change_points(int(t.strftime('%Y')))
                    timezone = is_in_dst(t, T)
                    method = 'grabSampleSurfaceChemistry'
                    equipment = 'Water Bottle'
                    V_insert = raw[i] + [actID] + [actMedia] + [actMediaSub] + [timezone] + [method] + \
                               [equipment] + [insDate] + [ftp.rsplit('/')[-2]] + [insDate] + [ftp.rsplit('/')[-2]]
                    ins = dbo.query(SQLinsert, V_insert)
                    if ins != {}:
                        print('error with file %s on row %s, err=%s' % (file, i, ins[sorted(ins)[0]]))
                        #SQLinsert
                        err = [folder[0:-1], type[0:-1], file, insDate, i, ins[sorted(ins)[0]]]
                        dbErr = dbo.query(SQLerrLog, err)
                        db_err += [[file, i, raw[i], ins[sorted(ins)[0]]]]
                    else:
                        print('success with file %s on row %s' % (file, i))

                s = '\n'.join([','.join([str(e) for e in row]) for row in db_err])
                with open(fpathErr, 'w') as f:
                    f.write(s)
        else:
            print('File Error - Not uploaded')
            db_err += [['File Error - Not uploaded.  Check file type column ordering and column names']]
            s = '\n'.join([','.join([str(e) for e in row]) for row in db_err])
            with open(fpathErr, 'w') as f:
                f.write(s)
except FileNotFoundError as e:
    print(e)
