<?php
	require_once('phpscripts/config.php');

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
  <title>Edit Movies</title>
  </head>
  <body>

  	<div class="nav">

  		<div class="userInfo"><p class="user">User: </p><p class="username"><?php echo $_SESSION['user_name']; ?><p></div><br>
  	<div class="userInfo">
  			<p class="user">Last Successful Login:</p><p class="username"><?php echo $_SESSION['user_last'];?></p><br>

  			<ul>
  				<li><a href="admin_createuser.php">Create User</a></li>
  				<li><a href="admin_edituser.php">Edit User</a></li>
  				<li><a href="admin_addmovie.php">Add Movie</a></li>
  				<!-- <li><a href="editall.php">Edit Movies</a></li><br> -->
  				<li><a href="admin_editmovie.php">Edit Movies</a></li><br>
  				<li><a href="phpscripts/caller.php?caller_id=logout">Sign Out</a></li>
  			</ul>
  		</div>
  	</div>

	<div class="intro">

    <div class="">
	<?php
		if(!is_string($getMovies)){
			while($row = mysqli_fetch_array($getMovies)){
				echo "
				<ul class=\"movies\">
	      <li>
	      <div>
	      <img src=\"../images/{$row['movies_cover']}\" alt=\"{$row['movies_title']}\" class=\"posters\">
	      <br>

				<div class=\"edit-buttons\">

	      <h2>{$row['movies_title']}</h2>
	      <p>{$row['movies_year']}</p>
				<a href=\"editall.php?id={$row['movies_id']}\">Edit Movie</a><br>

				<a href=\"phpscripts/caller.php?caller_id=deleteMovie&id={$row['movies_id']}\">Delete</a><br><br><br>
				</div>
				</div>
	      </li>
	      </ul>
				";
			}
		}else{
			echo "<p class=\"error\">{$getMovies}</p>";
		}
	?>


</div>
	</div>

</div>
</div>
</body>
</html>
