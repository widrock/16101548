<?php
require 'functions.php';

$id = $_GET['id'];

$m = query("SELECT * FROM mahasiswa where id = $id")[0];

?>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Detail Mahasiswa</title>
</head>

<body>
  <h1>Detail Mahasiswa</h1>
  <ul>
    <img src="img/<?= $m['gambar']; ?>" width="100">
    <li>Nama : <?= $m['nama']; ?></li>
    <li>NIM : <?= $m['nim']; ?></li>
    <li>Email : <?= $m['email']; ?></li>
    <li>Jurusan : <?= $m['jurusan']; ?></li>
    <li><a href="">Ubah</a> | <a href="">Hapus</a></li>
  </ul>
  <a href="index.php">Lihat Data</a>
</body>

</html>