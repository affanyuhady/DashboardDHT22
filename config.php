<?php
define('DB_SERVER', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_NAME', 'belajar_iot1');

//Hubungkan ke database
$db = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);

if ($db === false){
    die("ERROR: Tidak dapat terhubung..." . mysqli_connect_error());
}

function cekSerial($db, $serialNumber){
    $sql = "SELECT * FROM devices1 WHERE serialNumber = '$serialNumber'";
    $result = mysqli_query($db, $sql);

    if (mysqli_fetch_row($result) > 0){
        return true;
    } else {
        return false;
    }
}

?>