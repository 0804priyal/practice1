<?php
 $conn = mysqli_connect("localhost", "root", "", "sandip");
 
 if($conn==true) {
	 echo "database connect";
 }
 else {
		echo "database note connected";
 }
?>