<?php
session_start();
$conn=mysqli_connect("localhost", "root","","cloudstorage");
if(!$conn){
 die('Could not Connect to database:' .mysqli_error());
}
if(isset($_POST['submit']))
{
   
     $username = $_POST['username'];
     $q="SELECT * FROM demotable where username='" . $_POST['username'] . "'";
     $result = mysqli_query($conn,$q) or die("Error");
     $row = mysqli_fetch_assoc($result);
 $fetch_username=$row['username'];
 $email_id=$row['email'];
 $password=$row['password'];
 if($username==$fetch_username) {
 			$to = $email_id;
                $subject = "Password";
                $txt = "Your password is : $password.";
                $headers = "From: password@s.com" . "\r\n" .
                "CC: somebodyelse@example.com";
                mail($to,$subject,$txt,$headers);
 		}
 			else{
 				echo 'invalid userid';
 			}
}
?>
<!DOCTYPE HTML>
<html>
<head>
	<title>Reset Password</title>
	<link rel="stylesheet" type="text/css" href="css/cloud.css">
  
</head>
<body>
<h2><center>Forgot Password</center><h2>
<form action='#' method='post'>
<table cellspacing='5' align='center'>
<tr><td>Username:</td><td><input type='text' name='username'/></td></tr>
<tr><td></td><td><input type='submit' name='submit' value='Submit'/></td></tr>
</table>
</form>
</body>
</html>