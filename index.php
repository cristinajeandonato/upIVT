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
    <link rel="stylesheet" type="text/css" media="all" href="reset.css">
    <link rel="stylesheet" type="text/css" media="all" href="style.css">
  </head>
  <body>
    <header>
      <h1>UP Cebu Campus Map</h1>
      <img id="logo" src="assets/UP_logo.png" />
    </header>

    <div id="wrapper">
      <main>
        <svg version="1.1" id="interactive_map" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
     width="600px" height="400px" viewBox="0 0 800 600" enable-background="new 0 0 800 600" xml:space="preserve">
        <image id="map" x="0" y="0" height="600" width="800"  xlink:href="assets/up_cebu_map.svg" />
        </svg>
        <ol id="legend">
          <li>Admin Building</li>
          <li>AS Building</li>
          <li>Undergraduate Building</li>
          <li>Management Division</li>
          <li>Library</li>
          <li>Canteen</li>
        </ol>
      </main>

      <div id="side">
        <div id="input">
          <form method="get" action="index.php">
            <label for="say">Say:</label>
            <input type="text" name="say" id="say" />
            <input type="submit" name="submit" id="say" value="say" />
            <input type="hidden" name="convo_id" id="convo_id" value="<?php echo $convo_id;?>" />
            <input type="hidden" name="bot_id" id="bot_id" value="<?php echo $bot_id;?>" />
            <input type="hidden" name="format" id="format" value="<?php echo $format;?>" />      
          </form>
        </div>

        <div id="responses">
          <?php echo $display . '<a id="end"/>' ?>
        </div>
      </div>
  </body>

</html>