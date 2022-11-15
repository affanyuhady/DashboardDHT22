<?php
session_start();
$pesan = "Masukan Username dan Password";
if(isset($_POST['username']) && isset($_POST['password'])){
    include "config.php";

    $username = $_POST['username'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM data_diri1 WHERE username = '$username'";
    $result = mysqli_query($db, $sql);
    $data = mysqli_fetch_array($result);
    
  //if(mysqli_fetch_row($result)>0){
    if(password_verify($password, $data['password'])){
      $_SESSION['nama'] = $data['nama'];
      $_SESSION['hak_akses'] = $data['hak_akses'];

      header("Location: index.php");
      exit;
    } else {
      $pesan = "Username / Password Salah";
    }
  /*} else {
    $pesan = "Username Tidak Terdaftar";
  }*/
      
}

/*if (isset($_POST['login'])){
  include "config.php";
  $username = $_POST['username'];
  $password = $_POST['password'];

  if($username == '' or $password == ''){
    $pesan = "Silahkan Masukan Username dan Password";
  } else {
    $sql = "SELECT * FROM data_diri1 WHERE username = '$username'";
    $result = mysqli_query($db, $sql);
    $data = mysqli_fetch_array($result);

    if ($username, $data['username']){
      $pesan = "Username Tidak Terdaftar";
    } elseif ($data['password'] !== ''){
      $pesan = "Password Salah";  
    } elseif(password_verify($password, $data['password'])){
      $_SESSION['nama'] = $data['nama'];
      $_SESSION['hak_akses'] = $data['hak_akses'];

      header("Location: index.php");
      exit;
    } 
  }
}*/

?>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Login Aplikasi Monitoring | Unknown</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
</head>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
    <a href="../../index2.html"><b>Aplikasi</b>Monitoring</a>
  </div>
  <!-- /.login-logo -->
  <div class="card">
    <div class="card-body login-card-body">
      <p class="login-box-msg"><?php echo $pesan ?></p>

      <form action="" method="post">
        <div class="input-group mb-3">
          <input type="text" class="form-control" name="username" placeholder="Username">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" class="form-control" name="password" placeholder="Password">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="row">
          <!-- /.col -->
          <div class="col-4">
            <button type="submit" name="login" class="btn btn-primary btn-block">Masuk</button>
          </div>
          <!-- /.col -->
        </div>
      </form>
    </div>
    <!-- /.login-card-body -->
  </div>
</div>
<!-- /.login-box -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
</body>
</html>
