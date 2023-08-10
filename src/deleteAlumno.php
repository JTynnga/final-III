<?php
session_start();
require("connection.php");
$idDelAlumnoDelete = $_POST["idDelAlumnoDelete"];
$deleteAlumno = $mysqli->query("DELETE FROM info WHERE id_info = '$idDelAlumnoDelete'");
header("Location:./menu0.php");
die();
