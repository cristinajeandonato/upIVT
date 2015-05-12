<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en" dir="ltr">
<?php
  $display = "";
  $thisFile = __FILE__;
  if (!file_exists('bot/config/global_config.php')) header('Location: bot/install/install_programo.php');
  require_once ('bot/config/global_config.php');
  require_once ('bot/chatbot/conversation_start.php');
  $get_vars = (!empty($_GET)) ? filter_input_array(INPUT_GET) : array();
  $post_vars = (!empty($_POST)) ? filter_input_array(INPUT_POST) : array();
  $form_vars = array_merge($post_vars, $get_vars); // POST overrides and overwrites GET
  $bot_id = (!empty($form_vars['bot_id'])) ? $form_vars['bot_id'] : 1;
  $say = (!empty($form_vars['say'])) ? $form_vars['say'] : '';
  $convo_id = session_id();
  $format = (!empty($form_vars['format'])) ? $form_vars['format'] : 'html';
?>
  <head>
    <link rel="icon" href="./favicon.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="./favicon.ico" type="image/x-icon" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>UP Cebu Interactive Directory Map</title>
    <link rel="stylesheet" type="text/css" media="all" href="css/reset.css">
    <link rel="stylesheet" type="text/css" media="all" href="css/style.css">


    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/jquery-ui.js" type="text/javascript"></script>
    <link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/themes/blitzer/jquery-ui.css" rel="stylesheet" type="text/css" />
    <!--<script type="text/javascript">
      $(function () {
          $("#btnShow").click(function () {
              $("#dialog").dialog({
                  modal: true,
                  title: "Google Map",
                  width: 600,
                  hright: 450,
                  buttons: {
                      Close: function () {
                          $(this).dialog('close');
                      }
                  },
                  open: function () {
                      var myCenter=new google.maps.LatLng(10.322281, 123.898183);
                      var mapOptions = {
                          center: new google.maps.LatLng(10.322281, 123.898183),
                          zoom: 18,
                          mapTypeId: google.maps.MapTypeId.ROADMAP
                      }
                      var map = new google.maps.Map($("#dvMap")[0], mapOptions);
                      var marker = new google.maps.Marker({
                        position: myCenter,
                        map:map,
                        animation: google.maps.Animation.BOUNCE 
                      });

                  }

              });
          });
      });
      </script>-->
      <script src="http://maps.google.com/maps/api/js?sensor=false"
            type="text/javascript"></script>
    <script type="text/javascript">
    //<![CDATA[

    var customIcons = {
      housing: {
        icon: 'http://labs.google.com/ridefinder/images/mm_20_blue.png',
        shadow: 'http://labs.google.com/ridefinder/images/mm_20_shadow.png'
      },
      library: {
        icon: 'http://labs.google.com/ridefinder/images/mm_20_red.png',
        shadow: 'http://labs.google.com/ridefinder/images/mm_20_shadow.png'
      }
    };

    function load() {
      var map = new google.maps.Map(document.getElementById("map"), {
        center: new google.maps.LatLng(10.322281, 123.898183),
        zoom: 18,
        mapTypeId: 'roadmap'
      });
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
          var html = "<b>" + name + "</b> <br/>" + address;
          var icon = customIcons[type] || {};
          var marker = new google.maps.Marker({
            map: map,
            position: point,
            icon: icon.icon,
            shadow: icon.shadow
          });
          bindInfoWindow(marker, map, infoWindow, html);
        }
      });
    }

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

    //]]>
  </script>

  </head>
  <body onload="document.getElementById('say').focus()"; "load()">

    <header>
      <h1>UP Cebu Campus Map</h1>
      <img id="logo" src="assets/UP_logo.png" />
    </header>
    <div id="wrapper">
      <main>
        <div id="googleMap" style="width:500px;height:380px;"></div>
        <input id = "btnShow" type="button" value="Show in Google Maps"/>
        <div id="dialog" style="display: none">
          <div id="dvMap" style="height: 380px; width: 580px;">
          </div>
        </div>
        <svg version="1.1" id="interactive_map" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
     width="600px" height="400px" viewBox="0 0 800 600" enable-background="new 0 0 800 600" xml:space="preserve">
        <!-- <image id="map" x="0" y="0" height="600" width="800"  xlink:href="assets/up_cebu_map.svg" /> -->
          <a xlink:href="#asBuilding" target="_top">
            <g id="asBuilding">
                <rect x="122.404" y="80.368" transform="matrix(0.9729 -0.2314 0.2314 0.9729 -23.8976 34.4187)" fill="#C1272D" width="24.787" height="77.462"/>
              
                <rect x="156.107" y="71.63" transform="matrix(0.9729 -0.2314 0.2314 0.9729 -18.9941 42.2332)" fill="#C1272D" width="28.919" height="60.938"/>
              
                <rect x="197.771" y="62.507" transform="matrix(0.9729 -0.2313 0.2313 0.9729 -17.7243 51.2981)" fill="#C1272D" width="24.272" height="77.461"/>
              
                <rect x="143.164" y="88.529" transform="matrix(0.9729 -0.2314 0.2314 0.9729 -19.0655 37.2077)" fill="#C1272D" width="11.877" height="22.722"/>
              
                <rect x="182.853" y="77.743" transform="matrix(0.9729 -0.2313 0.2313 0.9729 -15.4914 46.0897)" fill="#C1272D" width="11.877" height="22.722"/>
              <path fill="#C1272D" d="M134.357,80.581c0.339,1.422-0.538,2.85-1.96,3.188l-10.545,2.515c-1.421,0.339-2.849-0.539-3.188-1.96
                l-0.093-0.39c-0.339-1.421,0.539-2.85,1.96-3.188l10.545-2.515c1.422-0.339,2.85,0.539,3.189,1.96L134.357,80.581z"/>
              <path fill="#C1272D" d="M209.335,62.548c0.339,1.422-0.539,2.85-1.96,3.189l-10.545,2.515c-1.422,0.339-2.85-0.538-3.188-1.96
                l-0.093-0.39c-0.339-1.422,0.539-2.85,1.96-3.189l10.545-2.515c1.422-0.339,2.85,0.539,3.188,1.96L209.335,62.548z"/>
              <path fill="#C1272D" d="M151.441,154.609c0.339,1.422-0.538,2.85-1.96,3.188l-10.545,2.515c-1.421,0.339-2.849-0.539-3.188-1.96
                l-0.093-0.391c-0.339-1.421,0.539-2.85,1.96-3.188l10.545-2.515c1.422-0.339,2.85,0.539,3.189,1.96L151.441,154.609z"/>
              <path fill="#C1272D" d="M226.418,136.576c0.339,1.422-0.539,2.85-1.96,3.189l-10.545,2.515c-1.422,0.339-2.85-0.538-3.188-1.96
                l-0.093-0.39c-0.339-1.422,0.539-2.85,1.96-3.189l10.545-2.515c1.421-0.339,2.85,0.539,3.188,1.96L226.418,136.576z"/>
            </g>
          </a>
          <a xlink:href="#unionBuilding" target="_top">
            <rect xmlns="http://www.w3.org/2000/svg" x="135.425" y="31.751" transform="matrix(0.9773 -0.2117 0.2117 0.9773 -5.2304 36.71)" fill="#C1272D" width="66.863" height="22.07"/>
          </a>

          <a xlink:href="#cebuCulturalCenter" target="_top">
            <polygon xmlns="http://www.w3.org/2000/svg" fill="#C1272D" points="415.21,273.228 414.742,270.397 435.078,267.967 435.06,267.855 434.735,265.894       431.482,266.283 431.367,265.594 426.677,237.258 426.171,237.318 429.118,236.967 429.082,236.747 428.059,230.565       428.088,230.747 423.208,231.331 423.178,231.149 417.489,196.777 420.808,196.38 420.742,196.388 415.273,163.346       415.365,163.909 395.029,166.338 394.4,162.538 394.457,162.883 368.772,165.951 343.209,169.004 343.781,172.46       323.444,174.889 328.82,207.37 331.752,207.02 332.014,206.615 337.763,241.353 337.471,241.573 332.099,242.214       333.129,248.434 336.384,248.045 341.073,276.381 341.226,277.065 337.934,277.458 338.277,279.532 358.613,277.102       359.082,279.933 358.774,280.607 361.625,280.266 362.108,283.175 362.118,283.731 367.892,283.042 370.408,298.243       370.526,298.23 390.276,295.871 409.455,293.58 406.938,278.377 407.166,278.35 413.445,277.599 413.355,277.052       412.875,274.144 412.485,274.19 415.314,273.853     "/>
          </a>

          <a xlink:href="highSchoolBuilding" target="_top">
            <g>
              <polyline fill="#C1272D" points="527.968,200.831 528.362,191.096 529.106,191.211 533.854,191.403 533.188,191.291 
                533.437,185.118 534.105,185.2 526.508,184.892 525.166,184.784 526.701,146.8 528.042,146.984 516.646,146.522 515.674,146.354 
                512.813,217.1 513.802,216.827 542.292,217.979 541.761,218.271 542.452,201.177 542.961,201.438 528.658,200.858   "/>
              <polyline fill="#C1272D" points="511.711,56.573 511.293,66.912 507.157,66.744 506.935,72.258 475.917,71.003 474.579,104.088 
                459.417,103.475 463.096,12.493 478.259,13.106 476.614,53.772 507.631,55.027 507.575,56.406 511.711,56.573   "/>
              
                <rect x="518.522" y="54.355" transform="matrix(0.9992 0.0404 -0.0404 0.9992 3.5009 -21.1296)" fill="#C1272D" width="12.417" height="43.459"/>
              
                <rect x="513.108" y="105.982" transform="matrix(0.9992 0.0403 -0.0403 0.9992 5.452 -20.9214)" fill="#C1272D" width="15.865" height="37.252"/>
              
                <rect x="541.565" y="58.082" transform="matrix(0.9992 0.0404 -0.0404 0.9992 5.3278 -22.0236)" fill="#C1272D" width="12.417" height="125.548"/>
              
                <rect x="535.216" y="185.641" transform="matrix(0.9992 0.0404 -0.0404 0.9992 8.2226 -21.8536)" fill="#C1272D" width="19.316" height="13.796"/>
              
                <rect x="552.502" y="204.7" transform="matrix(0.9992 0.0406 -0.0406 0.9992 8.9392 -22.3775)" fill="#C1272D" width="5.519" height="8.277"/>
              
                <rect x="543.95" y="212.72" transform="matrix(0.9992 0.0404 -0.0404 0.9992 9.1525 -21.9926)" fill="#C1272D" width="9.658" height="5.519"/>
            </g>
          </a>
          <a xlink:href="undergraduateBuilding" target="_top">
            <path xmlns="http://www.w3.org/2000/svg" fill="#C1272D" d="M180.893,576.716l-1.154-9.731l-0.853,0.102c-4.357,0.517-8.714,1.034-13.071,1.55l-0.662,0.162   l-3.475-29.272l0.367-0.045l43.421-5.153l0.043,0.361l-1.631-13.74l-0.701,0.085l28.676-3.404l0.043,0.363l1.617,13.624   l0.236-0.026l8.887-1.056l0.022,0.186l0.844,7.113l-0.257,0.029l25.8-3.061l-0.025-0.21l-0.625-5.265l-0.341,0.042l69.063-8.196   l0,0l-1.876-15.813l0,0l-5.474,0.65l0.044,0.361l-1.198-10.092l-0.155,0.017l-4.71,0.56l0.122,1.032l-2.143-18.062l0.395-0.047   l-61.819,7.337l0,0l1.948,16.42l0,0l-17.637,2.094l0.042,0.347l-1.124-9.469l-0.808,0.096l-10.14,1.202l0.049,0.407l-0.771-6.487   l0.647-0.078l-31.663,3.758l0,0c0,0,0.938,7.907,1.226,10.339l-43.853,5.204l0.12,0.459l-4.241-35.741l-0.065,0.009l14.661-1.74   l-0.008-0.079l-5.332-44.924l-0.853,0.101l-14.352,1.702l-0.045-0.383l-0.604-5.091l0.112-0.014l-8.626,1.024l0,0l0.45,3.795   l-0.094-0.753l-26.754,3.174l0,0l8.083,68.114l0,0l10.947-1.3l0.097,0.822l3.687,31.069l-0.622-0.196l-6.099,0.724l0,0l5.99,50.478   l-0.374,0.045l26.525-3.148l0.033,0.276l0.472,3.981l-1.063,0.127l12.011-1.426l0,0l-0.505-4.257l0,0L180.893,576.716"/>
          </a>
          <a xlink:href="#adminBuilding" target="_top">
            <polygon xmlns="http://www.w3.org/2000/svg" fill="#C1272D" points="434.282,466.666 435.024,471.928 435.024,471.928 444.121,470.647 444.121,470.647    445.488,480.349 445.488,480.349 453.565,479.21 452.765,479.324 453.534,484.781 453.534,484.781 499.704,478.277    545.419,471.836 545.107,471.879 544.338,466.422 544.338,466.422 551.615,465.396 551.615,465.396 550.248,455.694    551.31,455.545 559.687,454.363 559.343,454.412 558.602,449.15 558.701,449.848 557.915,444.267 558.405,445.267 550.03,446.447    548.818,445.548 547.49,436.123 547.513,436.287 540.237,437.313 540.213,437.149 539.477,431.915 539.865,432.416 494.15,438.858    447.98,445.363 447.903,444.816 448.641,450.05 449.464,450.102 441.387,451.24 441.364,451.075 442.692,460.499 442.84,461.551    433.743,462.831 433.594,461.782 434.381,467.364  "/>
            <polyline xmlns="http://www.w3.org/2000/svg" fill="#C1272D" points="501.346,437.845 499.979,428.141 500.11,428.122 484.818,430.277 484.683,429.313 486.187,439.98     "/>
            <polyline xmlns="http://www.w3.org/2000/svg" fill="#C1272D" points="521.976,474.52 522.745,479.978 522.722,479.98 477.005,486.422 476.03,486.41 475.281,481.099     "/>
          </a>
          <a xlink:href="library" target="_top">
            <polygon xmlns="http://www.w3.org/2000/svg" fill="#C1272D" points="666.544,489.873 666.196,483.758 681.481,482.885 681.831,489 713.013,487.219 715.527,531.242   639.098,535.607 636.584,491.583 "/>
          </a>
          <a xlink:href="guestHouse" target="_top">
            <polygon xmlns="http://www.w3.org/2000/svg" fill="#C1272D" points="621.189,558.006 651.761,556.26 652.25,564.821 648.582,565.03 649.246,576.646 625.399,578.01   624.736,566.392 621.68,566.566 "/>
          </a>
          <a xlink:href="gpBuilding" target="_top">
            <polygon xmlns="http://www.w3.org/2000/svg" fill="#C1272D" points="467.335,581.776 467.003,577.502 493.258,575.459 490.693,542.487 469.933,544.103 471.311,561.811   422.464,565.61 423.984,585.148 "/>
          </a>
        </svg>
        <div id="adminBuilding" class="modalDialog">
          <div>
            <a href="#close" title="Close" class="close">X</a>
            <h2>Administration Building</h2><br/>
            <img src="assets/admin_building.jpg"/ width="50%">
            <p>This is where most of the offices for administrative purposes</p><br>
            <p>Office of Student Affairs</p>
            <p>Office of the Dean</p>
          </div>
        </div>
        <div id="unionBuilding" class="modalDialog">
          <div>
            <a href="#close" title="Close" class="close">X</a>
            <h2>Union Building</h2>
            <img src=""/>
          </div>
        </div>
        <h2 id="legendLabel">Legend</h2>
        <ol id="legend">
          <a href=""><li>Administration Building</li></a>
          <a href=""><li>AS Building</li></a>
          <a href=""><li>Undergraduate Building</li></a>
          <a href=""><li>Union Building</li></a>
        </ol>
      </main>
      <div id="side">
        <div id="input">
          <form name="chatform" method="post" action="index.php#end" onsubmit="if(document.getElementById('say').value == '') return false;">
            <label for="say">Go:</label>
            <input type="text" name="say" id="say" />
            <input type="submit" name="submit" id="say" value="Go" />
            <input type="hidden" name="convo_id" id="convo_id" value="<?php echo $convo_id;?>" />
            <input type="hidden" name="bot_id" id="bot_id" value="<?php echo $bot_id;?>" />
            <input type="hidden" name="format" id="format" value="<?php echo $format;?>" />      
          </form>
        </div>

        <div id="responses">
          <?php echo $display . '<div id="end">&nbsp;</div>' . PHP_EOL ?>
        </div>

        <img src="assets/chatbot_avatar.png"/>
      </div>
  </body>
</html>