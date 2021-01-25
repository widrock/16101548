<?php
require 'functions.php';

$mahasiswa = query("SELECT * FROM mahasiswa");
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Dafta Mahasiswa</title>
</head>

<body>
  <h1>Daftar Mahasiswa</h1>
  <table border="1" cellpadding="10" cellspacing="0">
    <tr>
      <th>No.</th>
      <th>Aksi</th>
      <th>Nama</th>
      <th>Gambar</th>
    </tr>
    <?php $no = 1;
    foreach ($mahasiswa as $m) : ?>
      <tr>
        <td><?= $no++; ?></td>
        <td><a href="detail.php?id=<?= $m['id']; ?>">detail</a></td>
        <td><?= $m['nama']; ?></td>
        <td><img src="img/<?= $m['gambar'] ?>" width="50"></td>
      </tr>
    <?php endforeach ?>
  </table>


</body>

</html>