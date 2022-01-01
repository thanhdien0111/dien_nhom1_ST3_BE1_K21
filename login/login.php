<?php
session_start();
require "models/config.php";
require "models/db.php";
require "models/user.php";
require "models/Admin.php";
$admin = new Admin;
$users = new User;
if (isset($_POST['submit'])) {
  $user = $_POST['username'];
  $pass = $_POST['password'];

  if ($admin->checkLogIn($user, $pass)) {
    $_SESSION['user'] = $user;
    echo '<html><script>alert("admin");</script></html>';
    header('location:../Admin/index.php');

  } else {
    if ($users->checkLogIn($user, $pass)) {
      echo '<html><script>alert("user");</script></html>';
      header('location:../index.php');
    } else {
      echo '<html><script>alert("Sai tk/mk...");</script></html>';
      header('location:index.php');
    }
  }
}
