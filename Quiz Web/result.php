<?php
session_start();
include 'db.php';


$query="SELECT * FROM `mechanical` ";
$run=mysqli_query($con,$query);

$profpic = "bg.jpg";

echo"<center>";
echo "<h1>Quiz over</h1>";
echo"<br>";


?>

<button id="but2" class="btn"name="submit" onclick="window.location='login.html'" type="button";>Logout</button><br>
<button id="but2" class="btn"name="submit" onclick="window.location='domain.html'" type="button";>Quiz of another domain</button>

<html>
<head>
<style type="text/css">

body {
background-image: url('<?php echo $profpic;?>');
}
.btn{
    margin-top:20px;
    font-size: 20px;
}
.btn:hover
{
    color: rgb(93, 168, 31);
    background-color: rgb(33, 150, 18);
    cursor:pointer;

    
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Result</title>
</head>
<body>
</body>
</html>
