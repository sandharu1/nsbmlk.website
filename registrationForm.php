<?php include("connection.php"); //including the database using script file
	session_start(); //starts the session
	if(isset($_SESSION['user_login'])){
	$user = $_SESSION["user_login"]; 
	}
	else
	$user="";
	//above code is to put session as logged in user, or if not logged in = no session

	
?>

<head>
<link href="style_home.css" rel="stylesheet" type="text/css" />
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
					<li><a href="index.html"><strong>Home</strong></a></li>
					<li><a href="aboutus.html"><strong>About us</strong></a></li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" ><strong> Academic</strong> <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="computing2.php"><strong>Computing</strong></a></li>
							<li><a href="management2.php"><strong>Management</strong></a></li>
                            <!--<li><a href="engineering.html">Engineering</a></li>-->
						</ul>
					</li>
					<li><a  href="gallery2.php"><strong>Gallery</strong></a></li>
					<li><a href="contactus.html"><strong>Contact us</strong></a></li>
					<li><a  href="facilities.html"><strong>Facilities</strong></a></li>
					
				</ul>
      </div><!--/.nav-collapse -->
    </div>
  </div> <br/><br/><br/><br/><br/><br/>


<?php
if(!isset($_SESSION["user_login"]))
	{
		echo "";
	}
	else
	echo "You are already logged in<br/><a href=\"NSBM_BootstrapV7/NSBM_BootstrapV7/index.html\">Go Back</a>"; //put link to take if register is success


?>

                                                    

<?php
//---------------------------------------------------Login Script
if(isset($_POST["user_login"]) && isset($_POST["password_login"])){//check to see if user is logged in
	$user_login=preg_replace('#[^A-Za-z0-9]#i','',$_POST["user_login"]); //filter everything but numbers and letters
	$password_login=preg_replace('#[^A-Za-z0-9]#i','',$_POST["password_login"]);
	//$md5password_login=md5($password_login);  //checking the md5 password login
	$sql=mysql_query("SELECT id FROM admin WHERE name='$user_login' AND pass='$password_login' LIMIT 1");//query person
	
	//Check if they exist
	$userCount=mysql_num_rows($sql); //Count the number of rows returned
	if($userCount==1)
	{
		while($row=mysql_fetch_array($sql))
		{
			$id=$row["id"];
		}
		$_SESSION["id"]=$id;
		$_SESSION["user_login"]=$user_login;
		$_SESSION["password_login"]=$password_login;
		//header("location:home.php");  to go to home.php if login correctly 
		//exit("<http://localhost/NSBM_BootstrapV6/NSBM_BootstrapV6/studshow.php>");//if info is correct refresh the page with logged in user
		header("location:studshow.php"); 
	}
	else
	{
		echo "That information is incorrect, try again";
		exit();
	}
	
	
}
?>
<!------> 
<head>
<link href="style_home.css" rel="stylesheet" type="text/css" />
</head>                                                   

<body>
<table class="homepageTable">
	<tr>
		<td width="60%" valign="top">
		<h2>Login Below!!! If you are already a member</h2>
        <form action="registrationForm.php" method="post" name="form1" id="form1">
        <input type="text" size="25" name="user_login" id="user_login" placeholder="Username" /><br/>
        <input type="password" size="25" name="password_login" id="password_login" placeholder="Password" /> <br/>
        <input type="submit" name="button" id="button" value="Login to your account" />
        
        </form>
		</td>
		
		</form>
		
		</td>
	</tr>
</table>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>

 <div class="footer2">
      <div class="container">
        <div class="row">
          
          <div class="col-md-6 widget">
            <div class="widget-body">
              <p class="simplenav">
                <a href="#">Home</a> | 
								<a href="aboutus.html">About</a> |
								<a href="undergraduate.html">Acadamic</a> |
								<a href="contactus.html">Contact</a> |
								<b><a href="registrationForm.php">Sign in</a></b>
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
</html>
