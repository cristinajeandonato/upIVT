<?php
require("phpsqlajax_dbinfo.php");

// Opens a connection to a mySQL server
$connection=mysql_connect ('localhost', $username, $password);
if (!$connection) {
  die('Not connected : ' . mysql_error());
}

// Set the active mySQL database
$db_selected = mysql_select_db($database, $connection);
if (!$db_selected) {
  die ('Can\'t use db : ' . mysql_error());
}

// Select all the rows in the markers table
// $query= "SELECT * FROM markers INNER JOIN offices ON markers.id = offices.marker_id";
$query = "SELECT * FROM markers WHERE 1";
$result = mysql_query($query);
if (!$result) {
  die('Invalid query: ' . mysql_error());
}
$row = @mysql_fetch_array($result);
  echo json_encode($row);
  // if($row['type'] == 'building'){
  //   $query2 = "SELECT * FROM offices WHERE marker_id = $row[id]";
  //   $result2 = mysql_query($query2);
  //   if (!$result2) {
  //     die('Invalid query: ' . mysql_error());
  //   }
  //   while($row2 = @mysql_fetch_assoc($result2)){
  //     echo json_encode($row2);
  //   }
  // }


// header("Content-type: text/xml");

// // Start XML file, echo parent node
// echo '<markers>';

// Iterate through the rows, printing XML nodes for each
// while ($row = @mysql_fetch_assoc($result)){
//   // ADD TO XML DOCUMENT NODE
//   echo '<marker ';
//   echo 'name="' . parseToXML($row['name']) . '" ';
//   echo 'address="' . parseToXML($row['address']) . '" ';
//   echo 'lat="' . $row['lat'] . '" ';
//   echo 'lng="' . $row['lng'] . '" ';
//   echo 'type="' . $row['type'] . '" ';
//   echo 'picture="' . parseToXML($row['picture']) .'" ';
//   echo '>';
//   if($row['type']=='building'){
//     $query2 = "SELECT * FROM offices WHERE marker_id = $row[id]";
//     $result2 = mysql_query($query2);
//     if (!$result2) {
//       die('Invalid query: ' . mysql_error());
//     }
//     echo '<offices>';
//     while($row2 = @mysql_fetch_assoc($result2)){
//       echo '<office ';
//       echo 'name="' . parseToXML($row2['office_name']) . '" ';
//       // echo 'description="' . parseToXML($row2['description']) .'" ';
//       // echo 'current_head="' . parseToXML($row2['current_head']) .'" ';
//       echo '/>';
//     }
//     echo '</offices>';
//   }
//   echo '</marker>';
// }

// // End XML file
// echo '</markers>';

?>