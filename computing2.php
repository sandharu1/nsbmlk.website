<?php include("connection.php"); //including the database using script file?> 
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Computing</title>
<link rel="stylesheet" type="text/css"  href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.css">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/font-awesome.css">
<link rel="stylesheet" href="css/bootstrap-lightbox.min.css">
<link rel="stylesheet" href="css/bootstrap-lightbox.css">
<link rel="stylesheet" href="css/computingStyles.css"> 

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
							<li class="active"><a href="computing2.php"><strong>Computing</strong></a></li>
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
	</div> 
	<!-- /navbar --> 
   
 


  <!---------body section SoC------------>
  <div class="container-fluid soc1">
  <img src="images/TEXT/SOC.png" class="img-responsive" style="margin-left:70px">
  <div class="container soc2">
  <h4>Learning Information Technology through NSBM</h4>

<p>NSBM, the business school of Sri Lanka will integrate innovation, entrepreneurship with a culturally and ethnically diverse workforce, international engagement of expertise in the field of management, IT Education.</p>
	<h4>IT Division</h4>

<p>As forward thinking school in higher education NSBM assures the vital need to make learning relevant to industry expectations. NSBM has forged strategic collaborations with leading universities in the world that enable its students to expose themselves with global thinking and best in global industry.</p>
  </div>
 
      </div><!-------col-1---->


<?php

$get_course=mysql_query("SELECT * FROM course_comp");
$numrows=mysql_num_rows($get_course);
while($row=mysql_fetch_assoc($get_course))
{
  $id=$row['id'];
  $name=$row['name'];
  $obj=$row['objective'];
  $ent=$row['entry'];
  $c1=$row['content1'];
  $c2=$row['content2'];
  $c3=$row['content3'];
  $dur=$row['duration'];
  $comm=$row['commencement'];
  $lec=$row['lecture'];
  $cd=$row['course_director'];
  

  echo "
  <div class=\"row\">
  <div class=\"panel panel-default wideP\">
  <div class=\"panel-heading\">
 <a class=\"accordion-toggle\" data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapse$id\">
       $name</a>
        
  </div>
    <div id=\"collapse$id\" class=\"panel-collapse collapse\">
      <div class=\"panel-body\">
      <div class=\"row\">
      <div class=\"col-xs-2 col-sm-2\">
      Course Name:
      </div>
      <div class=\"col-xs-10 col-sm-10\">
      $name
      </div>
      </div>




      <div class=\"row\">
      <div class=\"col-xs-2 col-sm-2\">
       Objectives:
      </div>
      <div class=\"col-xs-10 col-sm-10\">
      $obj
      </div> 
  </div>  
  
  
   <div class=\"row\">
      <div class=\"col-xs-2 col-sm-2\">
       Entry  Requirements:
      </div>
      <div class=\"col-xs-10 col-sm-10\">
      $ent
      </div> 
  </div>  
  



  <div class=\"row\">
      <div class=\"col-xs-2 col-sm-2\">
      Contents:
      </div>
      <div class=\"col-xs-5 col-sm-5\">
      $c1
      $c3
      </div> 
      <div class=\"col-xs-5 col-sm-5\">
      $c2
      </div> 
      
  </div>  


   <div class=\"row\">
      <div class=\"col-xs-2 col-sm-2\">
       Duration:
      </div>
      <div class=\"col-xs-10 col-sm-10\">
      $dur
      </div>
  </div>  
  
  
   <div class=\"row\">
      <div class=\"col-xs-2 col-sm-2\">
       Commencement:
      </div>
      <div class=\"col-xs-10 col-sm-10\">
      $comm
      </div>
  </div>    
  
   <div class=\"row\">
      <div class=\"col-xs-2 col-sm-2\">
       Lectures &  Practicals:
      </div>
      <div class=\"col-xs-10 col-sm-10\">
      $lec
      </div> 
  </div>  
  
  <div class=\"row\">
      <div class=\"col-xs-2 col-sm-2\">
       Course Director(s):
      </div>
      <div class=\"col-xs-10 col-sm-10\">
      $cd
      </div> 
  </div>  
  
  <div class=\"row\">
      <div class=\"col-xs-5 col-md-5\"></div>
      <div class=\"col-xs-2 col-sm-2\">
       <a href=\"registrationForm3.php\" class=\"btn btn-default btn-primary\" style=\" color:hsla(0,0%,100%,1)\"><span class=\"glyphicon glyphicon-log-in\"></span>  Enroll Now</a>
      </div>
      <div class=\"col-xs-5 col-md-5\"></div>
      
  </div>  
  
  
      </div>
    </div>
  </div> 
  </div>
  
  ";


}


?>

<footer id="footer" class="top-space">

    <div class="footer1">
      <div class="container">
        <div class="row">
          
          <div class="col-md-3 widget">
            <h3 class="widget-title">Contact NSBM</h3>
            <div class="widget-body">
              <p>+94 (11) 544 5000<br>
                <a href="mailto:#">info@nsbm.lk</a><br>
                <br>
                309, High Level Road, Colombo 05, Sri Lanka.
              </p>  
            </div>
          </div>

          <div class="col-md-3 widget">
            <h3 class="widget-title">Follow NSBM</h3>
            <div class="widget-body">
              <p class="follow-me-icons">
                <a href="https://www.facebook.com/nsbm.lk"><img src="images/32/facebook.png"></a>
                <a href="https://www.flickr.com/photos/nsbm/sets/"> <img src="images/32/flickr-icon.png"></a>
                <a href="https://twitter.com/NSBM_SriLanka"> <img src="images/32/twitter.png"></a>
                <a href="https://www.youtube.com/channel/UCHsodhRyiuri2jD7H7nfsRg"> <img src="images/32/youtube.png"></a>
              </p>  
            </div>
          </div>

          <div class="col-md-6 widget">
            <h3 class="widget-title">Our Partners</h3>
            <div class="widget-body">
                      
                        
             <img src="images/logos/logo-2rtrt.jpg" usemap="#logomap" class="img-responsive  hidden-xs">
                         <map name="logomap">
                         <area shape="rect" coords="13,6,74,80" href="#"> 
                         <area shape="rect" coords="78,11,130,79" href="#">
                         <area shape="rect" coords="136,23,224,74" href="#">
                         <area shape="rect" coords="229,9,278,78" href="#">
                         <area shape="rect" coords="286,9,350,79" href="#">
                         <area shape="rect" coords="356,13,458,79" href="#">
                         <area shape="rect" coords="463,21,566,71" href="#">
                         <area shape="rect" coords="575,20,627,70" href="#">
                    
                         </map>
                         
                           
            </div>
          </div>

        </div> <!-- /row of widgets -->
      </div>
    </div>


		<div class="footer2">
			<div class="container">
				<div class="row">
					
					<div class="col-md-6 widget">
						<div class="widget-body">
							<p class="simplenav">
								<a href="index.html">Home</a> | 
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

<script>$("#someid").accordion({collapsible : true, active : 'none'});</script>
</body>
</html>
