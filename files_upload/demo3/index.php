<!DOCTYPE html>
<html>
<head>
	<title>PHP Uploading Multiple Files on a single page </title>
</head>
<body>
	<div style="height:40px;"></div>
	<div style="margin:auto; padding:auto; width:90%;">
		<span style="font-size:25px; color:red"><center><strong>Uploading Multiple Files into MySQL Database on a single page using PHP/MySQLi</strong></center></span>
			
		
		<form method="POST" action="upload.php" enctype="multipart/form-data">
		<input type="file" name="upload[]" multiple>
		<input type="submit" value="Upload"> 
		</form>
	</div>
	<div  width:80%; >
		<h2>Output:</h2>
		<?php
			include('conn.php');
			$query=mysqli_query($conn,"select * from photo");
			while($row=mysqli_fetch_array($query)){
				?>
				<img src="<?php echo $row['location']; ?>" height="150px;" width="150px;">
				<?php
			}		
		?>
	</div>
</body>
</html>