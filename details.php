<?php
	require_once('admin/phpscripts/config.php');
	if(isset($_GET['id'])) {
		//get the movie
		$tbl = "tbl_movies";
		$col = "movies_id";
		$id = $_GET['id'];
		$getMovie = getSingle($tbl, $col, $id);
	}
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">

<link href="https://fonts.googleapis.com/css?family=Fjalla+One|Muli" rel="stylesheet">
<link rel="stylesheet" href="css/main.css">

<title>Details</title>
</head>
<body>
<div class="back">
				<a href="index.php">Back...</a>
			</div>
	<?php

		if(!is_string($getMovie)) {
			$row=mysqli_fetch_array($getMovie);
			echo "
			<div class=\"details-movie\">
			<img src=\"images/{$row['movies_cover']}\" alt=\"{$row['movies_title']}\" class=\"posters\">
			<h1>{$row['movies_title']}</h1>
			<p>{$row['movies_year']}</p>
			<p>{$row['movies_storyline']}</p>
			</div>
			<div class=\"video\">
			<h1>Watch the Trailer</h1>
			<video autoplay controls>
    	<source src=\"videos/{$row['movies_trailer']}\">
  		</video>
			</div>

			";

		}else {
			echo "<p>{$getMovie}</p>";
		}
	?>
</body>
</html>
