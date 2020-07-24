<?php
session_start();
extract($_REQUEST);
$conn = mysqli_connect("localhost","root","","cloudstorage") or die("Database Connecion Failed");
$del =  $_GET["del"];
// $fileName = $_GET['file_name'];
// $sql="select * from userfiles where FileName='$del'";
//$result = mysqli_query($conn, $sql) or die("result error");
//$row=mysqli_fetch_array($result) or die("Row error");
if($del)
{
	$deletefile = "delete from userfiles where FileName='$del'";
	$result2 = mysqli_query($conn, $deletefile) or die("Failed");
	
	
	if($result2){
		unlink("uploads/".$del);
		$query1 = "INSERT into del_file(FileName) values('$del')";
		mysqli_query($conn, $query1) or die("failed");
		header("location: viewfile.php");
	}
	else{
		header("location: viewfile.php");
	}
	
}
?>
