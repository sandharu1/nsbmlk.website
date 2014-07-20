<?php include("connection.php"); //including the database using script file?> 
                                                    
<?php

$reg= @$_POST["reg"];   //made a variable $reg and using post method takes the reg from submit button below
						//have to add the @ symbot otherwise it shows as error undefined index

//variables to take info from the sign up page


$fname="";
$lname="";
$addr="";
$mail="";
$mobn="";
$homen="";
$date=""; //date of sign up
//$check="";  //to check and see if username is available or not

//registration form
$fname= strip_tags(@$_POST["firstname"]);  //can remove strip_tags if you want, used to hide parts in html
$lname= strip_tags(@$_POST["lastname"]);
$addr= strip_tags(@$_POST["address"]);
$mail=  strip_tags(@$_POST["email"]);
$mobn= strip_tags(@$_POST["mobnum"]);
$homen= strip_tags(@$_POST["homenum"]);
$date=  date("Y-m-d"); 						//using inbuilt date function

						/*$admin_email = "nimaz_war_zone@hotmail.com";
						$subject = "Confirmation Email";
  						$comment= $fname . " " . $lname . " Thank you for enrolling with NSBM!<br/> We will contact you shortly ";
  						$header= "From:" . $mail;*/
						  

$lvl= strip_tags(@$_POST["level"]);
$dgr= strip_tags(@$_POST["degree"]);

if($reg)
{
	//check email in database or not
		$e_check=mysql_query("SELECT email FROM users WHERE email='$mail'");
		$email_check=mysql_num_rows($e_check);	
		if($email_check==0)
		{
		//checking if all fields have been filled in
			if($fname&&$lname&&$addr&&$mail&&$mobn&&$homen)
			{
				//if($pass1==$pass2)
				//{  //checking if pass 1 is equal to retype password
					if(strlen($fname)>25||strlen($lname)>25)
					{  //check the maximum number of characters
						//echo "the maximum characters for first name/last name/user name is 25 characters";
						echo '<script>alert("the maximum characters for first name/last name is 25 characters");</script>';
					}
					else
					{ 
  						//send email
							echo '<script>alert("You have been succesfully enrolled at NSBM!! You will receive an email shortly");</script>';
						$query=mysql_query("INSERT INTO users VALUES('','$fname','$lname','$addr','$mail','$mobn','$homen','$date','$lvl','$dgr')");//table and data

						/*require_once "Mail.php";

						$from = "<nimaz_war_zone@hotmail.com>";
						$to = $mail;
						$subject = "Confirmation Email";
						$body = $fname . " " . $lname . " Thank you for enrolling with NSBM!!! This is an email to confirm your registration with our school ";

						$host = "ssl://smtp.gmail.com";
						$port = "465";
						$username = "nimazsheik@gmail.com";
						$password = "2325724ny";


						$headers = array ('From' => $from,
						  'To' => $to,
						  'Subject' => $subject);
						$smtp = Mail::factory('smtp',
						  array ('host' => $host,
						    'port' => $port,
						    'auth' => true,
						    'username' => $username,
						    'password' => $password));

						$mail = $smtp->send($to, $headers, $body);

						if (PEAR::isError($mail)) {
						  echo("<p>" . $mail->getMessage() . "</p>");
						 } else {
						  echo '<script>alert("You have been succesfully enrolled at NSBM!! You will receive an email shortly");</script>';
						 }*/



  						//mail($admin_email, $subject, $comment, $header);
						
						
						//die is to redirect user to a page
						
						//die("<h2>Welcome to NSBM</h2>Login to your account to get started....</h2>");
						//header("location:index.html"); 
						//echo '<script>alert("Thank you for enrolling at NSBM!!");</script>';
					}
	  		}
	  		else
			{
				echo '<script>alert("Please fill in all fields");</script>';
			}
		}
	
		else
		{
			echo '<script>alert("Invalid email");</script>';
		}
	}
		
//if "email" variable is filled out, send email
 /*  if (isset($_REQUEST['email']))  {
  
  //Email information
 $admin_email = "nimazsheik@gmail.com";
  //$email = $_REQUEST['email'];
  $subject = "Confirmation Email";
  //$comment = $_REQUEST['comment'];
  $comment= $fname . " " . $lname . " Thank you for enrolling with NSBM!<br/> We will contact you shortly ";
  
  //send email
  mail($admin_email, "$subject", $comment, "From:" . $mail);
  
  //Email response
  echo "Thank you for contacting us!";
  }*/




		
	
				
?>

<!------> 
<head>
	<meta charset="utf-8">
<title>Registration Form</title>
<link rel="stylesheet" type="text/css"  href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.css">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/font-awesome.css">
<link rel="stylesheet" href="css/bootstrap-lightbox.min.css">
<link rel="stylesheet" href="css/bootstrap-lightbox.css">

<link href="style_home.css" rel="stylesheet" type="text/css" />

		<!--script src="http://code.jquery.com/jquery-latest.min.js"></script-->
		<script src="js/jquery-2.1.1.min.js"></script>
		
<link href="style_home.css" rel="stylesheet" type="text/css" />
<script>
var $j = jQuery.noConflict();
$j(document).ready(function () {
    $j("#trigger").change(function () {
        if ($j(this).data('options') == undefined) {
            $j(this).data('options', $j('select.switchable option').clone());
        }
        var id = $j(this).val();
        var that = this;
        $j("select.switchable").each(function () {
            var thisname = $j(this).attr('name');
            var theseoptions = $j(that).data('options').filter('.' + thisname + '_' + id);
            $j(this).html(theseoptions);
        });
    });
    //then fire it off once to display the correct elements
    $j('#trigger').trigger('change');
});

</script>
</head>                                                   

<body class="bodystyle">


	<script src="js/bootstrap.js"></script>
<script src="js/jquery-2.1.1.min.js"></script>
<script src="js/headroom.js"></script>
<script src="js/jQuery.headroom.min.js"></script>
<script src="js/template.js"></script>

<!--navbar-->
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
							<li><a href="computing2.php">Computing</a></li>
							<li><a href="management2.php">Management</a></li>
                            
						</ul>
					</li>
					<li><a href="gallery2.php"><strong>Gallery</strong></a></li>
					<li><a href="contactus.html"><strong>Contact us</strong></a></li>
					<li><a href="facilities.html"><strong>Facilities</strong></a></li>
				</ul>
			</div><!--/.nav-collapse -->
		</div>
	</div> 
	
<br/><br/><br/><br/><br/>
<div class="instruct">
	<h2 align="center">Online Enrollment Form</h2>
	<ol>
		<li>This registration form can be used to register courses conducted at National School of Business Management only.</li>
		<li>This registration form can only be used in order to keep you informed about the training programme you want to follow. Certain courses require prospective student to submit a application followed by a interview or aptitude test procedure before they may be selected.</li>
		<li>When a course receives the maximum number of registrations allowed, the system will close the entry.</li>
	</ol>
	<p>&nbsp;&nbsp;All fields are mandatory</p>
</div><br/>

	</div>
<table class="homepageTable" align="center">
	<tr>
		
        <form action="registrationForm3.php" method="post" name="form1" id="form1">
        
		
		
		<!--td width="40%" valign="top"-->
		
		<tr><td width="200"><label>Select the Level</label></td><td><select name="level" id="trigger">
		<option value="undergraduate" selected>Undergraduate Programmes</option>
		<option value="postgraduate">Postgraduate Programmes</option>
		</select>

		<tr><td width="200"><label>Select the Degree</label></td><td>
		<select name="degree" class="xlarge switchable" id="">
			<option value="BSc (Hons) in Business Management (University College of Dublin)" class="degree_undergraduate">BSc (Hons) in Business Management (University College of Dublin)</option>
			<option value="BSc (Hons) in Human Resource Management (University College of Dublin)" class="degree_undergraduate">BSc (Hons) in Human Resource Management (University College of Dublin)</option>
			<option value="BSc in Human Resource Management - Special (University Grant Commission Approved)" class="degree_undergraduate">BSc in Human Resource Management - Special (University Grant Commission Approved)</option>
			<option value="BSc in Logistics Management - Special (University Grant Commission Approved)" class="degree_undergraduate">BSc in Logistics Management - Special (University Grant Commission Approved)</option>
			<option value="BSc in Industrial Management - Special (University Grant Commission Approved)" class="degree_undergraduate">BSc in Industrial Management - Special (University Grant Commission Approved)</option>
			<option value="BSc in Project Management - Special (University Grant Commission Approved)" class="degree_undergraduate">BSc in Project Management - Special (University Grant Commission Approved)</option>
			<option value="BSc (Hons) Marketing Management (University of Plymouth-United Kingdom)" class="degree_undergraduate">BSc (Hons) Marketing Management (University of Plymouth-United Kingdom)</option>
			<option value="BSc (Hons) Accounting & Finance (University of Plymouth-United Kingdom)" class="degree_undergraduate">BSc (Hons) Accounting & Finance (University of Plymouth-United Kingdom)</option>
			<option value="BSc (Hons) Operations and Logistics Management (University of Plymouth-United Kingdom)" class="degree_undergraduate">BSc (Hons) Operations and Logistics Management (University of Plymouth-United Kingdom)</option>
			<option value="BSc (Hons) International Management and Business (University of Plymouth-United Kingdom)" class="degree_undergraduate">BSc (Hons) International Management and Business (University of Plymouth-United Kingdom)</option>
			<option value="BSc (Hons) Events, Tourism and Hospitality (University of Plymouth-United Kingdom)" class="degree_undergraduate">BSc (Hons) Events, Tourism and Hospitality (University of Plymouth-United Kingdom)</option>
			<option value="BA in Interior Design (Limkokwing University of Creative Technology)" class="degree_undergraduate">BA in Interior Design (Limkokwing University of Creative Technology)</option>
			<option value="Foundation Program" class="degree_undergraduate">Foundation Program</option>

			<option value="MSc in Management (University College of Dublin)" class="degree_postgraduate">MSc in Management (University College of Dublin)</option>
			<option value="Postgraduate Diploma in Business Management" class="degree_postgraduate">Postgraduate Diploma in Business Management</option>
			<option value="Postgraduate Diploma in Human Resource Management" class="degree_postgraduate">Postgraduate Diploma in Human Resource Management</option>
			<option value="Postgraduate Diploma in Industrial Management" class="degree_postgraduate">Postgraduate Diploma in Industrial Management</option>
			<option value="Postgraduate Diploma in Project Management" class="degree_postgraduate">Postgraduate Diploma in Project Management</option>
		</select><br/></td></tr>

		<tr><td width="200"><label>First Name</label></td><td><input type="text" size="25" name="firstname" placeholder="First Name" value="<?php echo $fname; ?>" /></td></tr>
		<tr><td width="200"><label>Last Name</label></td><td><input type="text" size="25" name="lastname" placeholder="Last Name" value="<?php echo $lname; ?>" /></td></tr>
		<tr><td width="200"><label>Address</label></td><td><input type="text" size="25" name="address" placeholder="Address" value="<?php echo $addr; ?>" /></td></tr>
		<tr><td width="200"><label>E-mail</label></td><td><input type="text" size="25" name="email" placeholder="Email" value="<?php echo $mail; ?>" /></td></tr>
		<tr><td width="200"><label>Mobile Number</label></td><td><input type="text" size="25" name="mobnum" placeholder="Mobile Number" value="<?php echo $mobn; ?>" /></td></tr>
		<tr><td width="200"><label>Telephone Number</label></td><td><input type="text" size="25" name="homenum" placeholder="Home Number" value="<?php echo $homen; ?>" /></td></tr>
		<tr><td><input type="submit" name="reg" value="Enroll!"></td></tr>  
		
		</form>
		
		<!--/td-->
	</tr>
</table>

<br/><br/><br/>
<footer>
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







</body>
</html>
