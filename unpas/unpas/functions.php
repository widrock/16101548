<?php

function conn()
{
  return mysqli_connect("localhost", "root", "", "unpas");
}

function query($query)
{
  $conn = conn();
  $result = mysqli_query($conn, $query);

  $rows = [];

  while ($row = mysqli_fetch_assoc($result)) {
    $rows[] = $row;
  }

  return $rows;
}

function tambah($data)
{
  $conn = conn();

  $nim = htmlspecialchars($data['nim']);
  $nama = htmlspecialchars($data['nama']);
  $jurusan = htmlspecialchars($data['jurusan']);
  $email = htmlspecialchars($data['email']);
  $gambar = htmlspecialchars($data['gambar']);

  mysqli_query($conn, "INSERT INTO mahasiswa VALUES ('', '$nama', '$nim', '$jurusan', '$email', '$gambar')");

  return mysqli_affected_rows($conn);
}
