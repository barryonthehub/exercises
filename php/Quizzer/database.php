<?php 
/**
* Connects to the database by storing the connection credentials in the 
* variables below and then passing them through the mysqli object.
*
* If the connection fails, the Error Handler will spit out the connect_error
* property
*
* @package Quizzer 
*/

//Create connection credentials
$db_host = 'localhost';
$db_name = 'quizzer';
$db_user = 'root';
$db_pass = 'root';

//Create mysqli object
$mysqli = new mysqli($db_host, $db_user, $db_pass, $db_name);

//Error Handler
if($mysqli->connect_error){
	  printf("Connect failed: %s/n", $mysqli->connect_error);
	  exit();
}
