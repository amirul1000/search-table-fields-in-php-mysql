<?php
	////mysql datbase connection
	$servername = "localhost";
	$username = "root";
	$password = "secret";
	$db = "soveign_money";
	
	// Create connection
	$conn = new mysqli($servername, $username, $password,$db);
	// Check connection
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}
?>	