<?php
session_start();

$profpic = "bg1.jpg";

include 'db.php';

$query="SELECT * FROM `mechanical` ";
$run=mysqli_query($con,$query);
echo "<center>";
echo "<h1>Mechanical Quiz</h1>";
echo "<h2>Let's Start</h2>";

if(mysqli_num_rows($run)>0)
{
    echo "<center>";
    echo "<table>";
    while($row=mysqli_fetch_array($run))
    {
        $i=$row['Que_id'];
        ?>
        <form method='post'>
            <?php
        echo "<tr>";
        echo"<td>".$row['Que_id'].")".$row['Que']."</td>";
        echo "</tr>";
       
        echo "<tr>";
        echo "<td><input type='radio' id='option1' name=".$i.",class='radioptions' values=".$row['option1']." />".$row['option1']."";
        echo "<tr>";
        echo "<td><input type='radio' id='option2' name=".$i.", class='radioptions' values=".$row['option2']." />".$row['option2']."";
        echo"</tr>";
        echo "<tr>";
        echo "<td><input type='radio' id='option3' name=".$i.", class='radioptions' values=".$row['option3']." />".$row['option3']."";
        echo"</tr>";
        echo "<tr>";
        echo "<td><input type='radio' id='option4' name=".$i.",class='radioptions' values=".$row['option4']." />".$row['option4']." ";
        echo "</tr>";
        echo "</td>";
        echo "<tr>";
        echo "<td><span id='span1' class='radioptions' style='color:green; display:none;'><b>correct answer is :".$row['ans']."</b></span></td>";
        echo "</tr>";   
    }
   
    echo "</table>"; 
   
    
}  


?>

<button id="but1" class="btn "style="color: rgb(20, 18, 133);" type="button";>Check answers </button>
       <button id="but1" class="submit" name="prog"style="color: rgb(20, 18, 133);" onclick="window.location='result.php'" type="button";>End Quiz</button>

       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
   $(document).ready(function()
   {
       $("#but1").click(function()
       {
           $(".radioptions").show();
           $(".radioptions").attr("disabled",true);
           $("#but1").attr("disabled",true);  
           
       });
       

  
   });
  
</script>

<html>
<head>
<style type="text/css">

body {
    background-image: url('<?php echo $profpic;?>');
    }</style>
    
    <meta  charset="utf-8" />
    <title>Mech Quiz</title>
    </head>
    <link rel="stylesheet" href="style.css">
    
<body>
</body>
</html>
