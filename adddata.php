<?php
require "config.php";

$serial_number = $_GET['serial'];
$sensor = $_GET['sensor'];
$nilai = $_GET['nilai'];

if(cekSerial($db, $serial_number)){
    $sql = "INSERT INTO sensor1 (serial_number , sensor , nilai) VALUES ('$serial_number', '$sensor' , '$nilai')";

    if(mysqli_query($db, $sql)){
        echo "Data Berhasil Disimpan";
    } else{
        echo "Data Gagal Disimpan";
    }
} else {
    echo "Chip ID Tidak Terdaftar";
}


?>