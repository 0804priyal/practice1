<?php
include("connection.php");
$emaildata = "SELECT * FROM registration";

$result = $conn->query($emaildata);                            
  if($result->num_rows>0) {
  while ($row=$result->fetch_assoc()) {
 // $email=$row['email'];
  $email[] = $row['email'];
}
}

$request = $_REQUEST["request"];

$hint = "";

if ($request !== "") {
  $request = strtolower($request);
  $len=strlen($request);
  foreach($email as $name) {
    if (stristr($request, substr($name, 0, $len))) {
      if ($hint === "") {
        $hint = $name;
      } else {
        $hint .= ", $name";
      }
    }
  }
}

// Output "no suggestion" if no hint was found or output correct values
echo $hint === "" ? "no suggestion" : $hint;
?>