<?php
header("content-Type: application/json");
$site = $_GET["name"];

$host = "localhost";
$username = "touchcom_6touch";
$password = "Engimanyz4714";
$dbname = "touchcom_6touch";

$conn = new mysqli($host,$username,$password,$dbname);

//connect database
mysqli_set_charset($conn,"utf8");

//write sql
$sql = "select * from tbl_loc where site_name = '$site' " ;

//query
$result = $conn ->query($sql);
$res = array();
while($row = $result->fetch_assoc()){
    $res[] = $row;
}

//close database
$conn->close();

echo Json_encode($res);
?>

