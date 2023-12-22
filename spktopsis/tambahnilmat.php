<?php
//koneksi
session_start();
include("koneksi.php");

$alternatif = $_POST['alter'];
$kriteria   = $_POST['krit'];
$poin       = $_POST['nilai'];

$sql = "INSERT INTO tab_topsis (id_alternatif,id_kriteria,nilai) VALUES ('$alternatif','$kriteria','$poin')";

if ($koneksi->query($sql) === TRUE) {
  header("location:nilmat.php");
} else {
  echo "Error: " . $sql . "<br>" . $koneksi->error;
}
