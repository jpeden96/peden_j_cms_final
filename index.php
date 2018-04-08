<?php

ini_set('display_errors', 1);
error_reporting(E_ALL);

  require_once('admin/phpscripts/config.php');

  if(isset($_GET['filter'])){
		$tbl = "tbl_movies";
		$tbl2 = "tbl_genre";
		$tbl3 = "tbl_mov_genre";
		$col = "movies_id";
		$col2 = "genre_id";
		$col3 = "genre_name";
		$filter =  $_GET['filter'];
		$getMovies = filterResults($tbl, $tbl2, $tbl3, $col, $col2, $col3, $filter);
	}else{
		$tbl = "tbl_movies";
		$getMovies = getAll($tbl);
	}
   ?>


<!doctype html>
<html>
<head>
<meta charset="UTF-8">

<link href="https://fonts.googleapis.com/css?family=Fjalla+One|Muli" rel="stylesheet">
<link rel="stylesheet" href="css/main.css">

<title>Welcome to Julia's Favourite Movies</title>
</head>
<body>
  <?php
  include('includes/nav.html');

  if(!is_string($getMovies)){
    while($row = mysqli_fetch_array($getMovies)){
      echo "
      <ul class=\"movies\">
      <li>
      <div>
      <img src=\"images/{$row['movies_cover']}\" alt=\"{$row['movies_title']}\" class=\"posters\">
      <br>
      <h2>{$row['movies_title']}</h2>
      <p>{$row['movies_year']}</p>
      <a href=\"details.php?id={$row['movies_id']}\">More Information</a><br><br>
      </div>
      </li>
      </ul>

      ";
    }
  }else{
    echo "<p class=\"error\">{$getMovies}</p>";
  }
  include('includes/footer.html');
  ?>
</body>
</html>
