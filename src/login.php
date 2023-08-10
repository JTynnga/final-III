<?php
session_start();
require("connection.php");

if ($_SERVER["REQUEST_METHOD"] === "POST") {

    $_SESSION["email_I"] = $_POST["i_email"];
    $_SESSION["pass_I"] = $_POST["i_pass"];

    $eLOGIN = $_SESSION["email_I"];
    $pLOGIN = $_SESSION["pass_I"];

    $resultLog = $mysqli->query("SELECT * FROM info WHERE email = '$eLOGIN' AND password ='$pLOGIN'");
    $datosLog = $resultLog->fetch_assoc();

    $datosLogRow = $resultLog->num_rows;

    if ($datosLogRow == 1) {

        $_SESSION["nombre"] = $datosLog["name"];
        $_SESSION["pemision1"] = " ";
        $_SESSION["pemision2"] = " ";
        $_SESSION["pemision3"] = " ";

        if ($datosLog["id_rol"] == 1) {
            $_SESSION["cargo"] = "Administrador";
            $_SESSION["menuCargo"] = "ADMINISTRACIÓN";
            $_SESSION["pemision1"] = "hidden";
        } elseif ($datosLog["id_rol"] == 2) {
            $_SESSION["cargo"] = "Maestro";
            $_SESSION["menuCargo"] = "MAESTROS";
            $_SESSION["pemision2"] = "hidden";
        } elseif ($datosLog["id_rol"] == 3) {
            $_SESSION["menuCargo"] = "ALUMNOS";
            $_SESSION["cargo"] = "Alumno";
            $_SESSION["pemision3"] = "hidden";
        }

        header("Location:menuLogin.php");
        die();
    } else {
        $_SESSION["message_error"] = "Usuario o clave incorrectos.";
        header("Location:../index.php");
        die();
    }
} else {
    $_SESSION["message_error"] = "wrong sending data.";
    header("Location:../index.php");
    die();
}
