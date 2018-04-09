<?php
require_once('phpscripts/config.php');
require_once('phpscripts/read.php');
require_once('phpscripts/user.php');

$id = $_SESSION['user_id'];
$tbl = 'tbl_user';
$col = 'user_id';
$result = getSingle($tbl,$col,$id);
$info = $result->fetch_assoc();
$username = $info['user_name'];
$email = $info['user_email'];
$fname = $info['user_fname'];

if(isset($_POST['submit'])){
  $username = trim($_POST['user_name']);
  $email = trim($_POST['user_email']);
  $fname = trim($_POST['user_fname']);
  $password = trim($_POST['user_pass']);
  $messages = "";

  if($username !== "" && $email !== "" && $fname !== ""){
    $messages = editUser($id,$fname,$username,$password,$email);
  }
}

?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">

    <link href="https://fonts.googleapis.com/css?family=Fjalla+One|Muli" rel="stylesheet">
    <link rel="stylesheet" href="css/main.css">

    <title>Edit User</title>
  </head>
  <body>
    <?php
    if(isset($messages)){
        echo $messages;
    } ?>

    <div class="nav">

      <div class="userInfo"><p class="user">User: </p><p class="username"><?php echo $_SESSION['user_name']; ?><p></div><br>
    <div class="userInfo">
        <p class="user">Last Successful Login:</p><p class="username"><?php echo $_SESSION['user_last'];?></p><br>

        <ul>
          <li><a href="admin_createuser.php">Create User</a></li>
          <li><a href="admin_edituser.php">Edit User</a></li>
          <li><a href="admin_addmovie.php">Add Movie</a></li>
          <li><a href="admin_editmovie.php">Edit Movies</a></li><br>
          <li><a href="phpscripts/caller.php?caller_id=logout">Sign Out</a></li>
        </ul>
      </div>
    </div>


    <div class="intro">

          <h1>Edit User</h1>
    <form method="POST" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']);?>">

      <label for="user_name">Username:</label><br>
      <input type="text" class="inputText" name="user_name" <?php if(isset($username)){echo "value=".$username;} ?>><br><br>

      <label for="user_email">User Email:</label><br>
      <input type="email" class="inputText" name="user_email" <?php if(isset($email)){echo "value=".$email;} ?>><br><br>

      <label for="user_fname">User First Name:</label><br>
      <input type="text" class="inputText" name="user_fname" <?php if(isset($fname)){echo "value=".$fname;} ?>><br><br>

      <label for="user_pass">Password:</label><br>
      <input type="password"  class="inputText" name="user_pass"><br><br>

      <input type="submit" class="submit" name="submit" value="Save User">
  </form>

</div>
  </body>
</html>
