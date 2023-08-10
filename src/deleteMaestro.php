<?php
session_start();
require("connection.php");
$idDelMaestroDelete = $_POST["idDelMaestroDelete"];
$deleteAlumno = $mysqli->query("DELETE FROM info WHERE id_info = '$idDelMaestroDelete'");
header("Location:./menu0.php");
die();
