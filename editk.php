<?php
//untuk koneksi ke database
session_start();
include("koneksi.php");

//proses edit
$id_krit  = $_POST['id_krit'];
$kriteria = $_POST['nama_kriteria'];
$bobot    = $_POST['bobot'];

$ubah = "UPDATE tab_kriteria SET nama_kriteria='$kriteria',bobot='$bobot' WHERE id_kriteria='$id_krit'";

if ($koneksi->query($ubah) === true) {
    header("location:kriteria.php");
} else {
    echo "Error updating record: " . $koneksi->error;
}
