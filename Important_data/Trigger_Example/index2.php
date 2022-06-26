<?php

//$con=mysqli_connect("localhost", "root", "", "sandip");
$con=mysqli_connect("localhost", "root", "", "sandip");

if (!$con)

{

die('Could not connect: ' . mysqli_error());

}

mysqli_select_db("sandip", $con);

print "<h2>MySQL: Simple Select statement</h2>";


$result = mysqli_query("select * from registration");

echo "<table border='1'>

<tr>

<th>Id</th>

<th>Name</th>

<th>Email</th>
<th>Password</th>
<th>Date</th>

</tr>";


while($row = mysqli_fetch_array($result))

{

echo "<tr>";

echo "<td>" . $row['id'] . "</td>";

echo "<td>" . $row['name'] . "</td>";

echo "<td>" . $row['email'] . "</td>";

echo "<td>" . $row['pass'] . "</td>";
echo "<td>" . $row['date'] . "</td>";

echo "</tr>";

}

echo "</table>";


print "<h2>CREATE MySQL Trigger In PHP</h2>";

$sql = "CREATE TRIGGER MysqlTrigger BEFORE UPDATE ON registration FOR EACH ROW SET NEW.name=UPPER(NEW.name);";

mysqli_query($sql,$con);


print "<h2>MySQL: Update Statement</h2>";

$qry = mysqli_query("UPDATE registration SET name='ram' where id=2");

echo "Table has been updated.";

mysqli_query($qry,$con);



print "<h2>MySQL: Effect of Trigger</h2>";

$result = mysqli_query("select * from registration");

echo "<table border='1'>

<tr>

<th>EmpId</th>

<th>Firstname</th>

<th>Salary</th>

</tr>";

while($row = mysqli_fetch_array($result))

{


echo "<tr>";

echo "<td>" . $row['id'] . "</td>";

echo "<td>" . $row['name'] . "</td>";

echo "<td>" . $row['email'] . "</td>";

echo "<td>" . $row['pass'] . "</td>";

echo "<td>" . $row['date'] . "</td>";

echo "</tr>";

}

echo "</table>";

mysqli_close($con);

?>
