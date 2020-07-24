<?php
session_start();
if(isset($_SESSION['username']))
	{
        $user=$_SESSION['username'];
    }
if (isset($_FILES['files'])) 
{
    $filetoupload = $_FILES["files"];
    $fileName = $_FILES['files']['name'];
    $tmpName  = $_FILES['files']['tmp_name'];
    $fileSize = $_FILES['files']['size'];
    $fileType = $_FILES['files']['type'];
    date_default_timezone_set('Asia/Kolkata');
    $fileDate = date ("d m Y h:i:sa.", filemtime($tmpName));

    if(move_uploaded_file($filetoupload["tmp_name"], "uploads/" . $filetoupload['name']))
        echo "<p>file uploaded successfully</p>";
    else
        echo "<p>file upload failed</p>";
// ---------------------------------------------------------------------------------------

        $fp = fopen("uploads", 'r');
        $fp1 = fopen("PermaFiles", 'w');
           
        $file1 = "uploads/" . $fileName;
        $file2 = "PermaFiles/" . $fileName;

        if(copy($file1, $file2))
            echo "success";
        else
            echo "failed ";

        fclose($fp);
        fclose($fp1);

// ---------------------------------------------------------------------------------------
    $conn = mysqli_connect('localhost', 'root', '', 'cloudstorage');
    if (!$conn)
        {
           die( "<p>Database connection failed </p>");
        }
    $query = "INSERT into userfiles(FilePath, FileName, FileType, FileSize, username) values 
                                    ('$tmpName','$fileName','$fileType','$fileSize','$user')"; 

    $query1 = "INSERT into upld_file(FileName, FileType) values 
                                    ('$fileName','$fileType')";

    $totalQuery = "INSERT into totalfileupld(FileName, FileType, FileSize, username) values 
                                    ('$fileName','$fileType','$fileSize','$user')";

    mysqli_query($conn, $query) or die("<p>uploading data failed<p>");
    mysqli_query($conn, $query1) or die("failed");
    mysqli_query($conn, $totalQuery) or die("failed");
    header("Location:viewfile.php");
}
?>