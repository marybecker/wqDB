
var hydro = L.esri.tiledMapLayer({url: "https://basemap.nationalmap.gov/arcgis/rest/services/USGSHydroCached/MapServer"}),
    topo = L.esri.tiledMapLayer({url: "https://basemap.nationalmap.gov/arcgis/rest/services/USGSTopo/MapServer"});

var baseMaps = {"Hydro": hydro,"Topo": topo};

var map = L.map('map', {zoomSnap: .1,center: [41.67598909594535, -72.62512207031251],zoom: 9,layers: [hydro]});

var inside = false;

map.zoomControl.setPosition('topright');
var layerControl = L.control.layers(baseMaps,null,{position: 'topright'}).addTo(map);

map.createPane('basinPane');
map.getPane('basinPane').style.zIndex = 300;

var arr = [];
var arr1 = [];

var stations="http://localhost:8080/StationsMap/sites";

var stationsLayer = $.getJSON(stations, function(data) {
    console.log(data);
    mapStations(data)
    
    for (i = 0; i < data.features.length; i++) {  //loads siteID into an Array for searching
        arr1.push({label:data.features[i].properties.siteID, value:""});
    }
   addDataToAutocomplete(arr1);  //passes array for sorting and to load search control.
   console.log(arr1);
});

 // Initialize autocomplete with empty source.
 $( "#autocomplete" ).autocomplete();

// style for line data
var linestyle = {
    color: "black",
    weight: 1,
    fillOpacity: 0
};

function mapStations(data){

    //define common styles for all circle markers
    var circleStyle = {
        weight: 0.5,
        stroke: 0.5,
    };

    // Set style function that sets fill color property
    // Set different color for recently added sites (created within past week)
    function style(feature) {
        createDate = feature.properties.createDate;
        if (createDate < (Date.now()/1000) - 604800){
            return {
                fillColor: 'blue', 
                fillOpacity: 0.3,  
                opacity: 1,
                color: '#ffffff'
            };
        }
        else {
            return {
                fillColor: 'red', 
                fillOpacity: 0.3,  
                opacity: 1,
                color: '#ffffff'
            };
        }
        
    }

    var highlight = {
        'fillColor': 'yellow',
        'weight': 2,
        'opacity': 1,
        'fillOpacity': 0.8
    };

    
    var geojson = L.geoJson(null, {
        pointToLayer: function (feature, latlng) {
            return L.circleMarker(latlng,circleStyle);
        },
        style: style,
        onEachFeature: function(feature,layer) {
            // Tagging each site with their name for the search control.
            layer._leaflet_id = feature.properties.siteID;
    
            var popupContent = "<p><b>Site ID: </b>"+ feature.properties.siteID +
                "</br><b>Descrip: </b>"+ feature.properties.descrip +
                "</br><b>Type: </b>"+ feature.properties.type +
                "</br><b>Town: </b>"+ feature.properties.munName +
                "</br><b>SubRegionalBasin: </b>"+ feature.properties.subBasin +'</p>';
    
            layer.bindPopup(popupContent);
    
            layer.on("click", function (e) { 
                geojson.setStyle(style); //resets layer colors
                layer.setStyle(highlight);  //highlights selected.
                map.setView(e.target.getLatLng(),15);
                document.getElementById("newSiteInfo").innerHTML = 
                "<h2 class='txt-xl mt18 mb12'>Selected Site Information:</h2>"+
                "<p><b>Site ID: </b>"+ feature.properties.siteID +
                "</br><b>Descrip: </b>"+ feature.properties.descrip +
                "</br><b>Type: </b>"+ feature.properties.type +
                "</br><b>Town: </b>"+ feature.properties.munName +
                "</br><b>SubRegionalBasin: </b>"+ feature.properties.subBasin+'</p>';
            }); 
        }
    }).addTo(map);
    
    geojson.addData(data);
    
}

function getBasinInfo(data){
    var linestyle = {
        color: "#666666",
        weight: 1,
        fillOpacity: 0
    };

    var basin = L.geoJson(data,{
        style:linestyle,
        pane: 'basinPane',
        onEachFeature: function(feature,layer) {
            layer.on("click", function (e) {
                if(inside){
                    console.log(e.latlng);
                    console.log(layer.feature.properties);
                    document.getElementById("newSiteInfo").innerHTML = 
                    "<h2 class='txt-xl mt18 mb12'>Info for New Site:</h2>"+
                    '<p><b>Subbasin: </b>' + layer.feature.properties.SBAS_NO +'</br>'+
                    '<b>Subbasin Name: </b>' + layer.feature.properties.SUBREGION +'</br>'+
                    '<b>Lat: </b>'+ e.latlng.lat +'</br>'+'<b>Long: </b>'+e.latlng.lng+'</p>';
                }else{
                    document.getElementById("newSiteInfo").innerHTML = 
                    "<h2 class='txt-xl mt18 mb12'>Select another area:</h2>"+"Not a Valid Region!"
                }
            });
            layer.on("mouseover", function (e) { inside = true; console.log(inside); });
            layer.on("mouseout",  function (e) { inside = false; console.log(inside); });
        }  
    }).addTo(map);
    //layerControl.addOverlay(basin,'basin')
}

var stateBoundJSON = $.when(stationsLayer).done(function(){$.getJSON("data/CT_state_boundary.geojson",function(linedata){
        console.log(linedata);
        var stateBound = L.geoJson(linedata,{
            style:linestyle
        });
        layerControl.addOverlay(stateBound,'state boundary')
    });
})

var basinLayer = $.when(stateBoundJSON).done(function(){$.getJSON("data/Subregional_Basin.json",function(data){
        console.log(data);
        getBasinInfo(data)
    });
})

var search = L.control({position: 'topleft'});

search.onAdd = function(map) {
    var controls = L.DomUtil.get("search");
    L.DomEvent.disableScrollPropagation(controls);
    L.DomEvent.disableClickPropagation(controls);
    return controls;
};

search.addTo(map);

// Search example modified from https://www.gistechsolutions.com/leaflet/DEMO/Search/index.html
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

map.on('click',function(e){
    console.log(e.latlng);
    if (!inside){
        document.getElementById("newSiteInfo").innerHTML = 
        "<h2 class='txt-xl mt18 mb12'>Select another area:</h2>"+"Not a Valid Region!"
        // document.getElementById("LatLng").innerHTML = '<b>Lat: </b>'+ e.latlng.lat +'</br>'+'<b>Long: </b>'+e.latlng.lng;
    };
})
