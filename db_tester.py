import mysql_connector as msc
import xlrd
import matplotlib.pyplot as plt
import json

#################################################################
# practice: data base queries / open closing the DB manually
# ? is the delimiter used to prevent SQL injection
#################################################################
SQLselect = 'SELECT * FROM test.sites;'
SQLinsert = 'INSERT INTO sites VALUES (?,?,?,?);'
SQLinsertCol = 'INSERT INTO test.data (sometxt) VALUES (?);'
SQLinsertColMulti = 'INSERT into test.data(sometxt) VALUES(?),(?),(?);'
SQLdelete = 'DELETE FROM test WHERE test.id = ?;'
SQLupdate = 'UPDATE test SET value = ? WHERE id = ?'
SQLjoin = 'SELECT test.id, test.value, data.sometxt FROM test.test INNER JOIN test.data ON test.id = data.ID;'

V = ['f']
res = {}
with msc.MYSQL('localhost', 'test', 3306, 'pyuser', 'test') as dbo:
    res = dbo.query(SQLselect)

# Test out connections for admin only, nver do this!!!!!!!
# dbo = msc.MYSQL('localhost', 'test', 3306, 'test_user', 'test')
# dbo.conn.close()


############################################################################################
# practice writing functions and getting data in and out of the database in different formats
############################################################################################

# function to read in csv file
def readCsv(file):
    with open(file, 'r') as f:
        data = [[float(x) for x in line.replace('\n', '').rsplit(',')] for line in f.readlines()[1:]]
    return data


# readCsv("test.csv")

# function to read in xlsx file
def readXlsx(file):
    with xlrd.open_workbook(file) as f:
        sheet = f.sheet_by_index(0)  # could also use sheet_by_name("Sheet1")
        data = [[sheet.cell_value(r, c) for c in range(sheet.ncols)] for r in range(sheet.nrows)[1:]]
    return data


test = readXlsx("sites_test2.xlsx")


# function to get lat/long
def getLatLong(table):
    yLat = []
    xLong = []
    for i in range(len(table)):
        yLat.append(table[i]['YLat'])
        xLong.append(table[i]['XLong'])
    return yLat
    return xLong
    plt.plot(xLong, yLat, 'ro')  # you can call as many time as you want, it will over plot
    plt.show()


# insert data from csv into table one line at a time
with msc.MYSQL('localhost', 'test', 3306, 'pyuser', 'test') as dbo:
    data = readXlsx("sites_test2.xlsx")
    print(data)
    for i in range(len(data)):
        j = (data[i])
        ins = dbo.query(SQLinsert, j)
# no more dbo variable.  local scope

with msc.MYSQL('localhost', 'test', 3306, 'test_user', 'test') as dbo:
    sites = dbo.query(SQLselect)
    # getLatLong(sites)

# get all values for a key in the list of dictionaries (table in DB)
for i in sites:
    if not i['Town'] in S: S[i['Town']] = 0
    sorted(list(S.keys()))

with open(json_path, 'r') as f:
    json.dump({1: 2, 3: 3})

# list comprehension
# geojson = {
#     "type": "FeatureCollection",
#     "features": [
#         {
#             "type": "Feature",
#             "geometry": {
#                 "type": "Point",
#                 "coordinates": [d["XLong"], d["YLat"]],
#             },
#             "properties": d,
#         } for d in sites]
# }

# literate version
features = []
for d in sites:
    site = {'type': 'Feature', 'geometry': {'type': 'Point', 'coordinates': [d['XLong'], d['YLat']]}, 'properties': d}
    features += [site]
geojson = {"type": "FeatureCollection", 'features': features}

#write geojson from the database
with open('sites.geojson', 'w') as f:
    json.dump(geojson, f)

