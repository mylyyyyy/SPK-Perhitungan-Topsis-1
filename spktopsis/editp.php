<?php
//untuk koneksi ke database
session_start();
include("koneksi.php");

//proses edit
$id_poin = $_POST['id'];
$poin    = $_POST['poin'];

$ubah = "UPDATE tab_poin SET poin='$poin' WHERE id_poin='$id_poin'";

if ($koneksi->query($ubah) === true) {
    header("location:poin.php");
} else {
    echo "Error updating record: " . $koneksi->error;
}
