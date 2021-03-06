var customIcons = {
  housing: {
    icon: 'assets/house_green_icon.png',
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
    zoom: 18,
    mapTypeControlOptions: {
      mapTypeIds: [google.maps.MapTypeId.ROADMAP, google.maps.MapTypeId.SATELLITE, 'map_style']
    }
  }

  var map = new google.maps.Map(document.getElementById("map"), mapOptions);

  var infoWindow = new google.maps.InfoWindow;

  // Change this depending on the name of your PHP file
  downloadUrl("phpsqlajax_genxml2.php", function(data) {
  var xml = data.responseXML;
  var markers = xml.documentElement.getElementsByTagName("marker");
  for (var i = 0; i < markers.length; i++) {
    var name = markers[i].getAttribute("name");
    var address = markers[i].getAttribute("address");
    var type = markers[i].getAttribute("type");
    var point = new google.maps.LatLng(
    parseFloat(markers[i].getAttribute("lat")),
    parseFloat(markers[i].getAttribute("lng")));
    var html =
    "<div class='iwContainer'><div class='iwTitle'><h3>" + name + "</h3></div>" +
    "<div class='iwContent'>" + address + "</div></div>";
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
    google.maps.event.addListener(marker, 'click', (function(marker, i) {
      return function() {
          if (marker.getAnimation() != null) {
            marker.setAnimation(null);
          } else {
            marker.setAnimation(google.maps.Animation.BOUNCE);
          }
        }
    })(marker, i));

    bindInfoWindow(marker, map, infoWindow, html);
    
    }
  });

  map.mapTypes.set('map_style', styledMap);
  map.setMapTypeId('map_style');

}

// function toggleBounce(marker, i){
//   if(marker.getAnimation() != null){
//     marker.setAnimation(null);
//   } else {
//     marker.setAnimation(google.maps.Animation.BOUNCE);
//   }
//   google.maps.event.addDomListener(window, 'load', load);
// }

function bindInfoWindow(marker, map, infoWindow, html) {
  google.maps.event.addListener(marker, 'click', function() {
  infoWindow.setContent(html);
  infoWindow.open(map, marker);
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