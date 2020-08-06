<?php
session_start();
include('db.php');

if(isset($_POST['submit']))
{
    $username=$_POST['username'];
    $password=$_POST['password'];
    

    $query="SELECT * FROM `login` WHERE `username`='$username' AND `password`='$password'";
    $run=mysqli_query($con,$query);
    $row=mysqli_num_rows($run);
    if($row==1)
    {
        $_SESSION['username']=$username;
        echo "Login success";
        
    }
    else{
        echo "Failed";
    }
}
?>