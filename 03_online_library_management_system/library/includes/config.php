<?php 
// DB credentials.
define('DB_HOST','localhost');
define('DB_USER','uy28clic_c');
define('DB_PASS','uy28clic_c');
define('DB_NAME','uy28clic_c');
// Establish database connection.
try
{
$dbh = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME,DB_USER, DB_PASS,array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));
}
catch (PDOException $e)
{
exit("Error: " . $e->getMessage());
}
?>