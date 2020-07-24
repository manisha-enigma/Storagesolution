<?php 
  session_start(); 
  if(isset($_SESSION['username']))
	{	
		$user=$_SESSION['username'];
	}
?>
<style type="text/css">
	body{
		background-image: url(images/bg-01.jpg);
		background-repeat: no-repeat; 
		background-size: cover;
	}
	.bg-text
	{
		background-color: rgb(0,0,0);
  		background-color: rgba(0,0,0, 0.4);
  		color: white;
  		font-weight: bold;
  		border: 3px solid #f1f1f1;
  		position: absolute;
  		top: 35%;
  		left: 50%;
  		transform: translate(-50%, -50%);
  		z-index: 2;
  		width: 80%;
  		padding: 20px;
  		text-align: center;
	}

</style>
<html>
<head>
	<title>
		View File
	</title>

	<!-- Bootstrap core CSS -->
	<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/cloud.css" rel="stylesheet">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="#page-top"><b>STORAGE SOLUTION<b></a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
      		<ul class="navbar" >
		        <div><li>
               		 <a class="nav-link js-scroll-trigger" href="index.php">Home</a>
                </li></div>
                <div><li>
                	<a class="nav-link js-scroll-trigger" href="upload.html">Upload</a>
                </li></div>
            	<div><li>
                	<a class="nav-link js-scroll-trigger" href="index.php?logout='1'">Logout</a>
                </li></div>
           		
          	</ul>
      </div>
    </div>
  </nav>
<div class="container" >
	<div>
		<div>
			<br><br><br><br><br>
		</div>
	</div>
	<center><h2><b>Your Uploaded Files are listed below<b></h2></center>
		<table class="bg-text" border="7px" align="center">
	  <thead>
		<tr>
			<th>Serial no.</th>
			<th>Name of File</th>
			<th>File Type</th>
			<th>File Size</th>
			<th>Date of Upload</th>
			<th>Download</th>
			<th>Delete</th>
		</tr>
	  </thead>
	  <tbody>
		<?php
			$conn = mysqli_connect("localhost","root","","cloudstorage") or die("Cant connect to database");


			$query = "select * from userfiles where username='$user'";
			$result = mysqli_query($conn, $query);
			$i=1;
			while ($row = mysqli_fetch_array($result))
				{?>
					<tr>
						<td><?php echo $i++;?></td>
						<td><?php echo $row['FileName'];?></td>
						<td><?php echo $row['FileType'];?></td>
						<td><?php echo $row['FileSize'];?></td>
						<td><?php echo $row['DateUploaded'];?></td>
						?>
						<!-- <td><a href="uploads/<?php //echo $row['FileName']; ?>" target = "">View</a></td> -->
						<td><a href="uploads/<?php echo $row['FileName']; ?>" download >Download</a></td>
						<td><a href="deletefile.php?del=<?php echo $row['FileName']; ?>">Delete </a><br></td>
					</tr>										
			<?php  }   ?>
		</tbody>
	</table>
</div>
</body>
</html>
