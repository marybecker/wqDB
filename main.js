var options = {
  center: [41.67598909594535, -72.62512207031251],
  zoom: 9,
  zoomControl: true
}

var locate_options = {
  position: 'topright',
  strings: {
    title: "Show me where I am, yo!"
  }
}

var map = L.map('map', options);

// Get basemap URL from Leaflet Providers
var basemap_url = 'http://{s}.basemaps.cartocdn.com/light_all/{z}/{x}/{y}.png'

// Get basemap attributes from Leaflet Providers
var basemap_attributes = {
  attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a> &copy; <a href="http://cartodb.com/attributions">CartoDB</a>',
  subdomains: 'abcd',
  maxZoom: 19
};
// requests some map tiles
var tiles = L.tileLayer(basemap_url, basemap_attributes);

map.addLayer(tiles);

// AJAX request for GeoJSON data
var S = $.getJSON("sites.geojson", function (sites) {
            //console.log(sites);
            L.geoJSON(sites, {
                pointToLayer: function (feature, latlng) {
                    return L.circleMarker(latlng, geojsonMarkerOptions);
                },
                onEachFeature: function(feature,layer){
                  props= layer.feature.properties
                  console.log(props);
                  layer.bindPopup(props["STA_SEQ"]+" "+props["StrName"])

                }
            }).addTo(map);

            const obj = sites.features;
            console.log(obj);
            $(function(){
                var container_node = $('<div id="container"></div>').appendTo("section");
                var data = "text/json;charset=utf-8," + encodeURIComponent(JSON.stringify(obj));
                $('<a href="data:' + data + '" download="data.json">download</a>').appendTo('#container');
            });
})
    .fail(function(){
        // the data file failed to load
        console.log("Ruh roh! An error has occurred." );
    });

//console.log(JSON.stringify(S.responseJSON))

// /place holder for full JSON file data output
// var obj = {a: 123, b: "4 5 6"};
//
// $(function(){
//     var container_node = $('<div id="container"></div>').appendTo("section");
//     var data = "text/json;charset=utf-8," + encodeURIComponent(JSON.stringify(obj));
//     $('<a href="data:' + data + '" download="data.json">download</a>').appendTo('#container');
// });

// place holder for region-based file and annotation uploading
$(document).on('change', '#file_upload', function(event) {
    var reader = new FileReader();
    reader.onload = function(event) {
        var jsonObj = JSON.parse(event.target.result);
        alert(jsonObj.name);
    }
    reader.readAsText(event.target.files[0]);
});

var geojsonMarkerOptions = {
    radius: 8,
    fillColor: "#ff7800",
    color: "#000",
    weight: 1,
    opacity: 1,
    fillOpacity: 0.8
};

    // map.on('click', function(e) {
    //     console.log("Lat, Lon : " + e.latlng.lat + ", " + e.latlng.lng);
    // });
var popup = L.popup();
function onMapClick(e) {
    popup
        .setLatLng(e.latlng)
        .setContent("Lat, Lon : " + e.latlng.lat + ", "+ e.latlng.lng)
        .openOn(map);
}

map.on('click', onMapClick);
