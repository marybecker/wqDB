var hydro = L.esri.tiledMapLayer({url: "https://basemap.nationalmap.gov/arcgis/rest/services/USGSHydroCached/MapServer"}),
    topo = L.esri.tiledMapLayer({url: "https://basemap.nationalmap.gov/arcgis/rest/services/USGSTopo/MapServer"});

var map = L.map('map', {
    zoomSnap: .1,
    center: [41.67598909594535, -72.62512207031251],
    zoom: 9,
    layers: [hydro]
});

map.zoomControl.setPosition('topright');

var baseMaps = {
    "Hydro": hydro,
    "Topo": topo
  };

var arr = [];
var arr1 = [];

 // Initialize autocomplete with empty source.
 $( "#autocomplete" ).autocomplete();

var layerControl = L.control.layers(baseMaps,null,{position: 'topright'}).addTo(map);

// load GeoJSON of CT Boundary
var linestyle = {
    color: "black",
    weight: 1,
    fillOpacity: 0
};

//define common styles for all circle markers
var circleStyle = {
    weight: 0.5,
    stroke: 0.5,
    fillOpacity: 0.8
};

//mouse on mouse off
function highlightFeature(e) {
    var layer = e.target;
    layer.setStyle({
        weight: 5,
        color: '#666666',
        dashArray: '',
        fillOpacity: 0.7
    });
}

function resetHighlight(e) {
    geojson.resetStyle(e.target);
}

//function to define style
// Set style function that sets fill color property
function style(feature) {
    return {
        fillColor: 'green', 
        fillOpacity: 0.5,  
        weight: 2,
        opacity: 1,
        color: '#ffffff'
    };
}

var geojson =
L.geoJson(null, {
    pointToLayer: function (feature, latlng) {
        return L.circleMarker(latlng,circleStyle);
    },
    style: style,
    onEachFeature: function(feature,layer) {
        // Tagging each site with their name for the search control.
        layer._leaflet_id = feature.properties.siteID;

        var popupContent = "<p><b>Site ID: </b>"+ feature.properties.siteID +
            "</br>Descrip: "+ feature.properties.locationDescription +
            "</br>Type: "+ feature.properties.locationType +
            "</br>Town: "+ feature.properties.munName +
            "</br>SubRegionalBasin: "+ feature.properties.subBasin +'</p>';

        layer.bindPopup(popupContent);

        // layer.on({
        //     mouseover: highlightFeature,
        //     mouseout: resetHighlight
        // });
        layer.on("click", function (e) { 
            geojson.setStyle(style); //resets layer colors
            layer.setStyle(highlight);  //highlights selected.
            map.setView(e.target.getLatLng(),15);
        }); 
    }
}).addTo(map);

function zoomToFeature(e) {
    map.panTo(e.target.getLatLng());
}


  var stateBoundJSON = $.getJSON("data/CT_state_boundary.geojson",function(linedata){
      console.log(linedata);
      var stateBound = L.geoJson(linedata,{
          style:linestyle
      }).addTo(map);
      layerControl.addOverlay(stateBound,'state boundary')
  });

//   var stationsJSON = $.when(stateBoundJSON).done(function(){$.getJSON("data/stations.geojson", function (data){
//         console.log(data);
//         L.geoJson(data, options).addTo(map);
//     });
// });

// Null variable that will hold layer
//var stationsLayer = L.geoJson(null, {onEachFeature: forEachFeature, style: style});

var basinLayer = $.when(stationsLayer).done(function(){$.getJSON("data/Subregional_Basin.json",function(data){
        console.log(data);
        var basin = L.geoJson(data,{
            style:linestyle
        }).addTo(map);
        layerControl.addOverlay(basin,'basin')
    });
})

var stationsLayer = $.getJSON("data/stations.geojson", function(data) {
        geojson.addData(data);
	
        for (i = 0; i < data.features.length; i++) {  //loads siteID into an Array for searching
            arr1.push({label:data.features[i].properties.siteID, value:""});
        }
       addDataToAutocomplete(arr1);  //passes array for sorting and to load search control.
       console.log(arr1);
    });

 //stationsLayer.addTo(map);



var search = L.control({
    position: 'topleft'
});

search.onAdd = function(map) {
    var controls = L.DomUtil.get("search");
    L.DomEvent.disableScrollPropagation(controls);
    L.DomEvent.disableClickPropagation(controls);
    return controls;
};

search.addTo(map);

function addDataToAutocomplete(arr) {
                 
    arr.sort(function(a, b){ // sort object by Name
        var nameA=a.label, nameB=b.label
        if (nameA < nameB) //sort string ascending
            return -1 
        if (nameA > nameB)
            return 1
        return 0 //default return value (no sorting)
    })

       // The source for autocomplete.  https://api.jqueryui.com/autocomplete/#method-option
    $( "#autocomplete" ).autocomplete("option", "source", arr); 

    $( "#autocomplete" ).on( "autocompleteselect", function( event, ui ) {
        siteSelect(ui.item.label);  //grabs selected state name
        ui.item.value='';
    });
}



function siteSelect(a){
    map._layers[a].fire('click');  // 'clicks' on name from search
    }


var highlight = {
	'fillColor': 'yellow',
	'weight': 2,
	'opacity': 1
};

// function forEachFeature(feature, layer) {
//     // Tagging each state poly with their name for the search control.
//     layer._leaflet_id = feature.properties.siteID;

//     var popupContent = "<p><b>Site ID: </b>"+ feature.properties.siteID +
//         "</br>Descrip: "+ feature.properties.locationDescription +
//         "</br>Type: "+ feature.properties.locationType +
//         "</br>Town: "+ feature.properties.munName +
//         "</br>SubRegionalBasin: "+ feature.properties.subBasin +'</p>';

//     layer.bindPopup(popupContent);

//     layer.on("click", function (e) { 
//         stationsLayer.setStyle({
//             fillColor: 'green', 
//             fillOpacity: 0.5,  
//             weight: 2,
//             opacity: 1,
//             color: '#ffffff'
//         }); //resets layer colors
//         stationsLayer.setStyle({
//             'fillColor': 'yellow',
//             'weight': 2,
//             'opacity': 1
//         });  //highlights selected.
//     }); 
// }


map.on('click',function(e){
    console.log(e.latlng);
    //console.log(layerInfo);
})

