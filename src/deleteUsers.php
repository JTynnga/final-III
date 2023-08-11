<?php
session_start();
require("connection.php");
$idDelUserDelete = $_POST["idDelUserDelete"];
$deleteUser = $mysqli->query("DELETE FROM info WHERE id_info = '$idDelUserDelete'");
header("Location:./menu0.php");
die();
