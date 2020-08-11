var express = require('express');
var mysql = require('mysql');//loading the driver module
var app = express()

var path = require('path')
app.use('/StationsMap', express.static(path.join(__dirname,'/app')));

var config = {
	host     : 'localhost',
	database : 'awqx',
	user     : 'nodeUser',
	password : 'test'
};

//all sites in the DB table.......
app.get('/StationsMap/sites',function(req,res){
	var conn = mysql.createConnection(config);
	conn.connect();
	var SQL = 'SELECT * FROM stations';
	console.log(SQL);
	conn.query(SQL,function(err,response,fields){
		if(err){ throw err; }
		console.log(response);
		var features = [];
	  for (var i = 0; i<response.length; i++){
	    var point = {
	      "type": "Feature",
		  "properties": {"staseq": response[i].staSeq,"name":response[i].locationName,
		  "descrip":response[i].locationDescription,"type":response[i].locationType},
	      "geometry": {"type": "Point","coordinates":[response[i].xlong,response[i].ylat]}
	    }
	    features.push(point);
	  }
	  res.send({"type": "FeatureCollection","name": "sites","features":features})
	});
	conn.end();
});

//set routing pattern

//listen on 8080
//localhost:8080/sites
app.listen(8080, () => console.log('Example app listening on port 8080!'))
