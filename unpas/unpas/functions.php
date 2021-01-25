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
