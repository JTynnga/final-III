<?php
session_start();
require("connection.php");

$newUserEmail = $_POST["newUserEmail"];
$newUserPassw = $_POST["newUserPassw"];
$newUserNombre = $_POST["newUserNombre"];
$newUserApellido = $_POST["newUserApellido"];
$newUserDirec = $_POST["newUserDirec"];
$newUserFecha = $_POST["newUserFecha"];

$insertNewUser = $mysqli->query("INSERT INTO info (name,lastname,email,password,address,birthday,state) VALUES ('$newUserNombre','$newUserApellido','$newUserEmail','$newUserPassw','$newUserDirec','$newUserFecha',1)");
header("Location:./menu0.php");
die();
