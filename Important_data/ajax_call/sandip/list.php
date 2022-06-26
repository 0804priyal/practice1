<h2>Members List</h2>
<?php
$conn = mysqli_connect("localhost", "root", "", "sandip");
//print_r($_POST);
$insertQuery = "INSERT INTO members set parent_id = '".$_POST['membersid']."', Name = '".$_POST['name']."'";
$q = mysqli_query($conn,$insertQuery);

all_memmers(0);
function all_memmers($parent_id){
global $conn;
 
$sql = "select * from members where parent_id ='".$parent_id."'";
$result = $conn->query($sql);

while($row = mysqli_fetch_object($result)):
$i = 0;
if ($i == 0) echo '
<ul>';
 echo '
<li>' . $row->Name;
 all_memmers($row->Id);
 echo '</li>
 
';
$i++;
 if ($i > 0) echo '</ul>
 
';
endwhile;
}
mysqli_close($conn);
?>