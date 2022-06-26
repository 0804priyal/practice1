<?php
$conn = mysqli_connect("localhost", "root", "", "sandip");
//print_r($_POST);
//$id = $_POST['parent_id'];
//echo $id;
//exit();

$insertQuery = "INSERT INTO members set parent_id = '".$_POST['parent_id']."', Name = '".$_POST['Name']."'";
	

	if ($rowcount==0) {
		$q = mysqli_query($conn,$insertQuery);
		header("location: index_old.php?y=1");
		//echo "Recored added";
	}
	else {
		header("location: index_old.php?x=1");
		//echo "Recored added failed";
	}

?>