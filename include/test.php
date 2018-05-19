<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "gustavo";

$name = $_POST['name'];
$email = $_POST['email'];
$tp = $_POST['phone'];
$feedback = $_POST['message'];


$con = mysqli_connect($servername, $username, $password, $dbname);
if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
}

$sql = "INSERT INTO feedback (name,email,phone,feedback) VALUES('$name', '$email', '$tp', '$feedback' )";

 if (mysqli_query($con, $sql)) {
     header('Location:../hotel.html'.$_GET['previouspage']);

} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($con);
}

mysqli_close($con);


?>

