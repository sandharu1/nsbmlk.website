<?php include("connection.php"); //including the database using script file?> 
<head>
<link href="style_home.css" rel="stylesheet" type="text/css" />
</head>

<?php
/*code for delete individual*/
if(isset($_POST['delete_id']) && !empty($_POST['delete_id'])) {
  $delete_id = mysql_real_escape_string($_POST['delete_id']);
  mysql_query("DELETE FROM users WHERE `id`=".$delete_id);
  header('Location: studShow.php');
}

/*code for delete all*/
if(isset($_POST['deleteall']) && !empty($_POST['deleteall'])) {
  $delete_id = mysql_real_escape_string($_POST['deleteall']);
  mysql_query("DELETE FROM users");
  header('Location: studShow.php');
}

?>
<head>
  <meta charset="utf-8">
<title>Enrollment Table</title>
<link rel="stylesheet" type="text/css"  href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.css">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/font-awesome.css">
<link rel="stylesheet" href="css/bootstrap-lightbox.min.css">
<link rel="stylesheet" href="css/bootstrap-lightbox.css">

<script language="javascript">
    function printPage() {
        window.print();
    }
</script>
</head>

<body class="bodystyle">

<script src="js/bootstrap.js"></script>
<script src="js/jquery-2.1.1.min.js"></script>
<script src="js/headroom.js"></script>
<script src="js/jQuery.headroom.min.js"></script>
<script src="js/template.js"></script>


<!-- Fixed navbar -->
  <div class="navbar navbar-inverse navbar-fixed-top headroom" >
  
   <a href="index.html"> <div class="container logocontainer"><!--<a class="navbar-brand" href="index.html"><img src="images/logo.gif" alt="NSBMlogo" style="height:60px"></a>--></div> </a>
    
    <div class="container">
      <div class="navbar-header">
        <!-- Button for smallest screens -->
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
        <!--<a class="navbar-brand" href="index.html"><img src="images/logo.gif" alt="NSBMlogo"></a>-->
      </div>
      <div class="navbar-collapse collapse">
        <ul class="nav navbar-nav pull-right">
          <li><a href="index.html">Home</a></li>
          <li><a href="aboutus.html">About</a></li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Academic<b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li><a href="computing2.php">Management</a></li>
              <li><a href="management2.php">Computing</a></li>
                            <li class="active"><a href="engineering.html">Engineering</a></li>
            </ul>
          </li>
          <li><a href="contactus.html">Contact</a></li>
          <li><a class="btn" href="signin.html">SIGN IN / SIGN UP</a></li>
        </ul>
      </div><!--/.nav-collapse -->
    </div>
  </div> <br/><br/><br/><br/><br/><br/>


<?php

$result = mysql_query("SELECT * FROM users");

echo "<h1 align='center' style=\"font: Arial;font-size:24px; padding:5px;  color:#0084c6;\">Current Enrollment Table</h1><br/>";

echo "<table border='1' class='studentTable'>
<tr>
<th width=115px>First Name</th>
<th width=145px>Last Name</th>
<th width=155px>Address</th>
<th>E-mail</th>
<th>Mobile Number</th>
<th>Home Number</th>
<th>Level</th>
<th>Degree</th>

</tr>";

while($row = mysql_fetch_array($result)) {
  echo "<tr>";
  echo "<td>" . $row['first_name'] . "</td>";
  echo "<td>" . $row['last_name'] . "</td>";
  echo "<td>" . $row['address'] . "</td>";
  echo "<td>" . $row['email'] . "</td>";
  echo "<td>" . $row['mobile'] . "</td>";
  echo "<td>" . $row['home_num'] . "</td>";
  //echo "<td>" . $row['sign_up_date'] . "</td>";
  echo "<td>" . $row['level'] . "</td>";
  echo "<td>" . $row['degree'] . "</td>";
  echo "<td style=\"border: 0px\"><form action=\"studShow.php\" method=\"post\">
        <input type=\"hidden\" name=\"delete_id\" value=\"".$row['id']."\" />
        <input type=\"submit\" value=\"Delete\"  style=\"background-color:red\"/>
      </form></td>";
  echo "</tr>";
}

echo "</table>";

echo "<br/><form action=\"studShow.php\" method=\"post\">
        <input type=\"submit\" value=\"Delete All\" name=\"deleteall\"  style=\"background-color:green;margin-left:30px\"/>
        <input type=\"submit\" value=\"Print\" onclick=\"printPage();\" style=\"background-color:blue; margin-left:15px;\"/>
      </form>";


mysql_close($bd);  //bd is the connection to database, check connection.php for more info
?>

    <div class="footer2">
      <div class="container">
        <div class="row">
          
          <div class="col-md-6 widget">
            <div class="widget-body">
              <p class="simplenav">
                <a href="#">Home</a> | 
                <a href="about.html">About</a> |
                <a href="sidebar-right.html">Acadamic</a> |
                <a href="contact.html">Contact</a> |
                <b><a href="signup.html">Sign up</a></b>
              </p>
            </div>
          </div>

          <div class="col-md-6 widget">
            <div class="widget-body">
              <p class="text-right">
                Copyright &copy; 2014, NSBM. Designed by Parallax web solutions
              </p>
            </div>
          </div>

        </div> <!-- /row of widgets -->
      </div>
    </div>

  </footer> 



<script src="js/bootstrap.js"></script>
<script src="js/jquery-2.1.1.min.js"></script>
<script src="js/headroom.js"></script>
<script src="js/jQuery.headroom.min.js"></script>
<script src="js/template.js"></script>

</body>