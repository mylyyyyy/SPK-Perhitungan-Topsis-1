<?php
//untuk koneksi ke database
session_start();
include("koneksi.php");

//proses edit
$id_alter   = $_POST['id'];
$alternatif = $_POST['nama'];

$ubah = "UPDATE tab_alternatif SET nama_alternatif ='$alternatif' WHERE id_alternatif ='$id_alter' ";

if ($koneksi->query($ubah) === true) {
    header("location:alternatif.php");
} else {
    echo "Error updating record: " . $koneksi->error;
}
