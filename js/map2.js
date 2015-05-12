var customIcons = {
  housing: {
    icon: 'assets/images/house_green_icon.png',
    shadow: 'http://labs.google.com/ridefinder/images/mm_20_shadow.png'
  },
  library: {
    icon: 'http://labs.google.com/ridefinder/images/mm_20_red.png',
    shadow: 'http://labs.google.com/ridefinder/images/mm_20_shadow.png'
  }
};

function load() {
  var styles = [
    {
      stylers: [
        { hue: "#094424" },
        { saturation: -10 }
      ]
    },{
      featureType: "road",
      elementType: "geometry",
      stylers: [
        { lightness: 100 },
        { visibility: "simplified" }
      ]
    },{
      featureType: "road",
      elementType: "labels",
      stylers: [
        { visibility: "off" }
      ]
    }
  ];

  var styledMap = new google.maps.StyledMapType(styles,
    {name: "Styled Map"});

  var mapOptions = {
    center: new google.maps.LatLng(10.322281, 123.898183),
    zoom: 17,
    mapTypeControlOptions: {
      mapTypeIds: [google.maps.MapTypeId.ROADMAP, google.maps.MapTypeId.SATELLITE, 'map_style']
    }
  }

  var map = new google.maps.Map(document.getElementById("map"), mapOptions);

  var boxOptions = { disableAutoPan: true,
    alignBottom:true,
    closeBoxURL:"img/close-btn.png",
    maxWidth: 0,
    pixelOffset: new google.maps.Size(-140, -12),
    infoBoxClearance: new google.maps.Size(1,1)
  };
  var infoBox = new InfoBox(boxOptions);

  // Change this depending on the name of your PHP file
  downloadUrl("phpsqlajax_genxml2.php", function(data) {
  var xml = data.responseXML;
  var markers = xml.documentElement.getElementsByTagName("marker");
  for (var i = 0; i < markers.length; i++) {
    var name = markers[i].getAttribute("name");
    var address = markers[i].getAttribute("address");
    var type = markers[i].getAttribute("type");
    var picture = markers[i].getAttribute("picture");

    var offices = xml.documentElement.getElementsByTagName("office");

    var office_list = "";
    for(var j = 0; j < offices.length; j++){
      office_list += ("<li>" + offices[j].getAttribute("name") + "</li>");
    }

    var point = new google.maps.LatLng(
    parseFloat(markers[i].getAttribute("lat")),
    parseFloat(markers[i].getAttribute("lng")));
    var html =
    "<div class='iwContainer'><div class='iwTitle'><h3>" + name + "</h3></div>" +
    "<div class='iwContent'><img src='" + picture + "'/> <ul>" + office_list + "</ul><br/>" + address + " <br/><a href='http://upcebu.edu.ph/'>See More</a></div></div>";
    // "<b>" + name + "</b> <br/>" + address;
    var icon = customIcons[type] || {};
    var marker = new google.maps.Marker({
      map: map,
      position: point,
      icon: icon.icon,
      shadow: icon.shadow,
      title: " " + name,
      animation: google.maps.Animation.DROP,
    });
    // google.maps.event.addListener(marker, 'click', (function(marker, i) {
    //   return function() {
    //       if (marker.getAnimation() != null) {
    //         marker.setAnimation(null);
    //       } else {
    //         marker.setAnimation(google.maps.Animation.BOUNCE);
    //       }
    //     }
    // })(marker, i));

    bindInfoWindow(marker, map, infoBox, html);
    
    }
  });

  map.mapTypes.set('map_style', styledMap);
  map.setMapTypeId('map_style');

  // var searchBox = new google.maps.places.SearchBox(document.getElementById('input-search-box'));

  var defaultBounds = new google.maps.LatLngBounds(
      new google.maps.LatLng(10.322450, 123.895195),
      new google.maps.LatLng(10.322661, 123.902061));
  map.fitBounds(defaultBounds);

  var input =(document.getElementById('input-search-box'));
  map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

  var searchBox = new google.maps.places.SearchBox((input));

  
}

// function toggleBounce(marker, i){
//   if(marker.getAnimation() != null){
//     marker.setAnimation(null);
//   } else {
//     marker.setAnimation(google.maps.Animation.BOUNCE);
//   }
//   google.maps.event.addDomListener(window, 'load', load);
// }

function bindInfoWindow(marker, map, infoBox, html) {
  google.maps.event.addListener(marker, 'click', function() {
    if(infoBox){
        infoBox.close();
    }
  infoBox.setContent(html);
  infoBox.open(map, marker);
  });
}

function downloadUrl(url, callback) {
  var request = window.ActiveXObject ?
  new ActiveXObject('Microsoft.XMLHTTP') :
  new XMLHttpRequest;

  request.onreadystatechange = function() {
    if (request.readyState == 4) {
      request.onreadystatechange = doNothing;
      callback(request, request.status);
    }
  };

  request.open('GET', url, true);
  request.send(null);
}

function doNothing() {}