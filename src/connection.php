<?php
try {
    $mysqli = new mysqli("localhost", "root",  "", "uni");
} catch (mysqli_sql_exception $e) {
    echo "Error: " . $e->getMessage();
};
