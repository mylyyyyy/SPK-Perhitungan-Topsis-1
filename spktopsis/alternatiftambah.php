<?php
//koneksi
session_start();
include("koneksi.php");

//pemberian kode id secara otomatis
$carikode = $koneksi->query("SELECT id_alternatif FROM tab_alternatif ORDER BY id_alternatif DESC LIMIT 1");
$datakode = $carikode->fetch_array();
$jumlah_data = $datakode['id_alternatif'];

// Jika tidak ada data alternatif, set nilai id alternatif menjadi 1
if ($jumlah_data == null) {
  $jumlah_data = 1;
} else {
  // Jika ada data alternatif, tambahkan 1 ke nilai id alternatif terakhir
  $jumlah_data += 1;
}

?>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>SPK TOPSIS</title>
  <!--bootstrap-->
  <link href="tampilan/css/bootstrap.min.css" rel="stylesheet">

  <!--icon-->
  <link href="tampilan/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

</head>

<body>

  <!--menu-->
  <nav class="navbar navbar-default navbar-custom">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="index.php">SPK Metode Topsis</a>
      </div>

      <div class="collapse navbar-collapse">
        <ul class="nav navbar-nav navbar-right">
          <li>
            <a href="kriteria.php">Kriteria</a>
          </li>
          <li>
            <a href="alternatif.php">Alternatif</a>
          </li>
          <li>
            <a href="poin.php">Poin</a>
          </li>
          <li>
            <a href="nilmat.php">Nilai Matriks</a>
          </li>
          <li>
            <a href="hastop.php">Hasil Topsis</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <div class="container">

    <div class="row">
      <div class="col-lg-6 col-lg-offset-3">
        <div class="panel panel-default">
          <div class="panel-heading text-center">
            Alternatif
          </div>

          <ul class="nav nav-tabs">
            <li>
              <a href="alternatif.php" data-toggle="tab">Tabel Alternatif</a>
            </li>
            <li class="active">
              <a href="alternatiftambah.php" data-toggle="tab">Tambah Alternatif</a>
            </li>
          </ul>

          <div class="panel-body">
            <!-- Tab panes -->
            <div class="tab-content">
              <div class="">
                <!--form alternatif-->
                <form class="form" action="alternatiftambah.php" method="post">
                  <div class="form-group">
                    <input class="form-control" type="text" name="id_alter" value="<?php echo $jumlah_data ?>" readonly>
                  </div>
                  <div class="form-group">
                    <input class="form-control" type="text" name="nm_alter" placeholder="Nama Alternatif">
                  </div>
                  <div class="form-group">
                    <input class="btn btn-success" type="submit" name="simpan" value="Tambah">
                  </div>
                </form>
                <!--form alternatif-->
              </div>
            </div>
          </div>
          <!--panel body-->
        </div>
      </div>
    </div>

  </div>

  <!--footer-->
  <!-- <footer class="text-center">
    <div class="footer-below">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <em>Copyright &copy; EUX - 2020</em>
          </div>
        </div>
      </div>
    </div>
  </footer> -->

  <?php

    if (isset($_POST['simpan'])) {
      $id_alter   = $_POST['id_alter'];
      $alternatif = $_POST['nm_alter'];

      $sql = "INSERT INTO tab_alternatif (id_alternatif, nama_alternatif) VALUES ('$id_alter', '$alternatif')";
      if ($koneksi->query($sql) === TRUE) {
        header("location:alternatif.php");
      } else {
        echo "Error: " . $sql . "<br>" . $koneksi->error;
      }
    }

  ?>


  <!--plugin-->
  <script src="tampilan/js/bootstrap.min.js"></script>

</body>

</html>