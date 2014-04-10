<?php
//set up mysql connection
mysql_connect("db url", "root", "") or die(mysql_error());
//select database
mysql_select_db("name of db") or die(mysql_error());
// Retrieve all the data from the "tblstudent" table
$result = mysql_query("SELECT * FROM songs") or die(mysql_error());
// store the record of the "songs" table into $row
 
while ($row = mysql_fetch_array($result)) {
    // Print out the contents of the entry 
    echo '<tr>';
    echo '<td>' . $row['Song'] . '</td>';
    echo '<td>' . $row['Artist'] . '</td>';
    echo '<td>' . $row['Album'] . '</td>';
}
?>