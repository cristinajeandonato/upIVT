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
    <script type="text/javascript" src="js/map2.js"> </script>
    <script src="js/infobox.js" type="text/javascript"></script>
    


  </head>
  <body onload="load()">
    <header>
      <h1>UP Cebu Campus Map</h1>
      <img id="logo" src="assets/images/UP_logo.png" />
    </header>
    <div id="wrapper">
      <main>
        <input id="input-search-box" class="controls" type="text" placeholder="Search Box"/>
        <div id="map" style="width: 900px; height: 400px"></div>
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