<?php
//koneksi
session_start();
include("koneksi.php");

// Menghapus semua data dari tabel tab_topsis
$hapus_data = $koneksi->query("TRUNCATE TABLE tab_topsis");

if ($hapus_data) {
  header("location:nilmat.php");
} else {
  echo "Error: Gagal menghapus data";
}
?>
