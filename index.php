<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>SPK TOPSIS - Penilaian Bangunan</title>
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background-color: #f8f9fa; /* Warna latar belakang */
      color: #343a40; /* Warna teks */
    }

    .navbar-custom {
      background-color: #007bff; /* Warna latar belakang navbar */
      border-color: #007bff; /* Warna border navbar */
      color: #ffffff; /* Warna teks navbar */
    }

    .jumbotron {
      background-color: #007bff; /* Warna latar belakang jumbotron */
      color: #ffffff; /* Warna teks jumbotron */
    }

    .panel-default {
      border-color: #ddd; /* Warna border panel */
    }

    .panel-heading {
      background-color: #f8f9fa; /* Warna latar belakang heading panel */
    }

    .btn-primary {
      background-color: #007bff; /* Warna latar belakang tombol primer */
      border-color: #007bff; /* Warna border tombol primer */
    }

    .btn-primary:hover {
      background-color: #0056b3; /* Warna latar belakang tombol primer saat dihover */
      border-color: #0056b3; /* Warna border tombol primer saat dihover */
    }
  </style>
</head>

<body>


<body>

  <!-- welcome message -->
  <div class="container">
    <div class="jumbotron">
      <h2>Selamat Datang di Sistem Pendukung Keputusan (SPK) TOPSIS</h2>
      <p>Penilaian Bangunan dengan Pertimbangan Struktural dan Lingkungan</p>
    </div>
  </div>

  <!-- login form -->
  <div class="container">
    <div class="row">
      <div class="col-md-4 col-md-offset-4">
        <div class="panel panel-default">
          <div class="panel-heading">
            <h3 class="panel-title">Login</h3>
          </div>
          <div class="panel-body">
            <form method="post" action="kriteria.php"> <!-- Tambahkan action ke kriteria.php -->
              <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" class="form-control" id="username" name="username" required>
              </div>
              <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" class="form-control" id="password" name="password" required>
              </div>
              <button type="submit" class="btn btn-primary">Login</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- ... your existing body code ... -->

</body>

</html>

  <!-- footer -->
  <!-- ... your existing footer code ... -->

  <!-- plugin -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>

</html>
