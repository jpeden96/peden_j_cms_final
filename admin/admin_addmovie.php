<?php

  ini_set('display_errors', 1);
  error_reporting(E_ALL);

  require_once('phpscripts/config.php');

  if(isset($_POST['submit'])){
    $cover = $_FILES['cover']; //change from post to files array
    $title = $_POST['title'];
    $year = $_POST['year'];
    $run = $_POST['runtime'];
    $story = $_POST['storyline'];
    $trailer = $_POST['trailer'];
    $release = $_POST['release'];
    echo $cover['name'];
    echo $cover['type'];
    echo $cover['size'];
    echo $cover['tmp_name'];
  }
?>

<!doctype html>
<html>
<head>
<meta charset="UTF-8">

<link href="https://fonts.googleapis.com/css?family=Fjalla+One|Muli" rel="stylesheet">
  <link rel="stylesheet" href="css/main.css">
<title>Welcome to your admin panel login</title>
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
          <li><a href="editall.php">Edit Movies</a></li><br>
          <li><a href="phpscripts/caller.php?caller_id=logout">Sign Out</a></li>
        </ul>
      </div>
    </div>

<div class="intro">
  <?php if(!empty($message)){ echo $message;} ?> <!--so the message doesn't always run, only when the login process doesn't work - -->
  <br>
  <h1>Adding a Movie</h1>
  <p>Please fill of the fields.</p>
    <form action="admin_addmovie.php" method="post" enctype="multipart/form-data">
      <label>Cover Image:</label><br>
      <input type="file" name="cover" value=""> <!--took out the classes inputText -->
      <br><br>
      <label>Movie Title:</label><br>
      <input type="text" name="title" value="">
      <br><br>
      <label>Movie Year:</label><br>
      <input type="text" name="year" value="">
      <br><br>
      <label>Movie Runtime:</label><br>
      <input type="text" name="runtime" value="">
      <br><br>
      <label>Movie Storyline:</label><br>
      <input type="text" name="storyline" value="">
      <br><br>
      <label>Movie Trailer:</label><br>
      <input type="text" name="trailer" value=""> <!--should be file for mp4-->
      <br><br>
      <label>Movie Release:</label><br>
      <input type="text" name="release" value="">
      <br><br>
      <input type="submit" name="submit" value="Add Movie">
    </form>
  </div>
</body>
</html>
