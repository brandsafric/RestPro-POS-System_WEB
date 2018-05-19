<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "gustavo";

$fname = $_POST['fname'];
$lname = $_POST['lname'];
$nic = $_POST['nic'];
$gender = $_POST['optradio'];
$email = $_POST['email'];
$tp = $_POST['phone'];
$address = $_POST['address'];


$con = mysqli_connect($servername, $username, $password, $dbname);
if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
}

$sql = "INSERT INTO addmember (fname,lname,nic,gender,email,phone,address) VALUES('$fname', '$lname', '$nic', '$gender', '$email', '$tp', '$address' )";

 if (mysqli_query($con, $sql)) {
     header('Location:../hotel.html'.$_GET['previouspage']);

} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($con);
}

mysqli_close($con);


?>
