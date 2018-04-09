<?php
	require_once('phpscripts/config.php');
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

		<h1>Edit Movies</h1>
	<?php
		$tbl = "tbl_movies";
		$col = "movies_id";
		$id = $_GET['id'];
		echo single_edit($tbl, $col, $id);

		if(!is_string($getMovie)) {
			$row=mysqli_fetch_array($getMovie);
			echo "
		<img src=\"../images/{$row['movies_cover']}\" alt=\"{$row['movies_title']}\">
		<video autoplay controls>
		<source src=\"../videos/{$row['movies_trailer']}\">
		</video>
		";


		}else{
			echo "<p>{$getMovie}</p>";
		}
	?>
</div>
</body>
</html>
