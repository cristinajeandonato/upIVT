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
    var point = new google.maps.LatLng(
    parseFloat(markers[i].getAttribute("lat")),
    parseFloat(markers[i].getAttribute("lng")));

    if(type == 'building'){
      var offices = markers[i].childNodes[0].childNodes;
      var office_list = "";
      var office_name = "";
      var current_head = "";
      var telephone_number = "";
      var office_name_link = "";
      var email_address = "";
      // var modals = [];
      var modals = "";
      for(var j = 0; j < offices.length; j++){
        office_name = offices[j].getAttribute("name");
        current_head = offices[j].getAttribute("current_head");
        telephone_number = offices[j].getAttribute("telephone_number");
        email_address = offices[j].getAttribute("email_address");
        office_name_link = "<li><a href='#modal'>" + office_name + "</a><li>";
        office_list += ("<li><a href='#modal_" + office_name + "'>" + office_name + "</a></li>");
        createModal(office_name, current_head, telephone_number, email_address);
      }
      var html =
          "<div class='iwContainer'><div class='iwTitle'><h3>" + name + "</h3></div>" +
          "<div class='iwContent'><img src='" + picture + "'/> <ul>" + office_list + "</ul><br/>" + address + " <br/><a href='http://upcebu.edu.ph/'>See More</a></div></div>";
    }
    var icon = customIcons[type] || {};
    var marker = new google.maps.Marker({
      map: map,
      position: point,
      icon: icon.icon,
      shadow: icon.shadow,
      title: " " + name,
      animation: google.maps.Animation.DROP,
    });
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



  
}

// function toggleBounce(marker, i){
//   if(marker.getAnimation() != null){
//     marker.setAnimation(null);
//   } else {
//     marker.setAnimation(google.maps.Animation.BOUNCE);
//   }
//   google.maps.event.addDomListener(window, 'load', load);
// }

function createModal(office_name, current_head, telephone_number, email_address) {
  var modalWindow = document.createElement("div");
  var modalId = document.createAttribute("id");
  modalId.value = "#modal_"+office_name;
  modalWindow .setAttributeNode(modalId);
  var modalClass = document.createAttribute("class");
  modalClass.value = "modalDialog";
  modalWindow .setAttributeNode(modalClass);

  var modalContent = document.createElement("div");
  modalWindow.appendChild(modalContent);

  var closeLink = document.createElement("a");
  var href = document.createAttribute("href");
  href.value = "#close";
  closeLink.setAttributeNode(href);
  var title = document.createAttribute("title");
  title.value = 'Close';
  closeLink.setAttributeNode(title);
  var classLink = document.createAttribute("class");
  classLink.value = 'close';
  closeLink.setAttributeNode(classLink);
  modalContent.appendChild(closeLink);

  var officeName = document.createElement("h2");
  var officeNameText = document.createTextNode(office_name);
  officeName.appendChild(officeNameText);
  modalContent.appendChild(officeName);

  var currentHead = document.createElement("p");
  var currentHeadText = document.createTextNode("Current Head: " + current_head);
  currentHead.appendChild(currentHeadText);
  modalContent.appendChild(currentHead);

  var telephoneNumber = document.createElement("p");
  var telephoneNumberText = document.createTextNode("Telephone Number: " + telephone_number);
  telephoneNumber.appendChild(telephoneNumberText);
  modalContent.appendChild(telephoneNumber);

  var emailAddress = document.createElement("p");
  var emailAddressText = document.createTextNode("Email : " + email_address);
  emailAddress.appendChild(emailAddressText);
  modalContent.appendChild(emailAddress);

  document.body.appendChild(modalWindow);
}

function bindInfoWindow(marker, map, infoBox, html) {
  google.maps.event.addListener(marker, 'click', function() {
    if(infoBox){
        infoBox.close();
    }
  console.log("hello");
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
