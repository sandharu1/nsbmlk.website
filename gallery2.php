<?php include("connection.php"); //including the database using script file?> 


<head>
<meta charset="utf-8">
<title>NewsEvents</title>
<link rel="stylesheet" type="text/css"  href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.css">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/font-awesome.css">
<link rel="stylesheet" href="css/bootstrap-lightbox.min.css">
<link rel="stylesheet" href="css/bootstrap-lightbox.css">
<link rel="stylesheet" href="css/Neventsgalary.css"> 
<link rel="stylesheet" href="css/blueimp-gallery.min.css">
<link rel="stylesheet" href="css/bootstrap-image-gallery.min.css">
</head>


<body>

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
					<li class="active"><a  href="gallery2.php"><strong>Gallery</strong></a></li>
					<li><a href="contactus.html"><strong>Contact us</strong></a></li>
					<li><a class="btn" href="facilities.html"><strong>Facilities</strong></a></li>
				</ul>
			</div><!--/.nav-collapse -->
		</div>
	</div> 
	<!--  End navbar --> 
    
    <!---------------- Image galary---lightbox-------default index---------->
    <div id="blueimp-gallery" class="blueimp-gallery">
    <!-- The container for the modal slides -->
    <div class="slides"></div>
    <!-- Controls for the borderless lightbox -->
    <h3 class="title"></h3>
    <a class="prev">‹</a>
    <a class="next">›</a>
    <a class="close">×</a>
    <a class="play-pause"></a>
    <ol class="indicator"></ol>
    <!-- The modal dialog, which will be used to wrap the lightbox content -->
    <div class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" aria-hidden="true">&times;</button>
                    <h4 class="modal-title"></h4>
                </div>
                <div class="modal-body next"></div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-left prev">
                        <i class="glyphicon glyphicon-chevron-left"></i>
                        Previous
                    </button>
                    <button type="button" class="btn btn-primary next">
                        Next
                        <i class="glyphicon glyphicon-chevron-right"></i>
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>
    

 <div class="container-fluid galerycon1">
 <img class="img-responsive galaryhead" src="images/TEXT/cooltext1652914541.png">
 <div id="mainGalary">
      <div class="row">
<?php
$get_albums=mysql_query("SELECT * FROM albums");
$numrows=mysql_num_rows($get_albums);
while($row=mysql_fetch_assoc($get_albums))
{
	$id=$row['id'];
	$album_title=$row['album_title'];
	#first a href make a letter for the picture to be shown 
	echo "
	<div class=\"col-xs-3 col-md-3 imgec$id\">
    	<a href=\"images/Gallary/imgC$id/$id (1).jpg\" title=\"$album_title\" data-gallery=\"#blueimp-gallery-imgC$id\"><h6>$album_title</h6>
        <img  class=\"img-responsive img-rounded\" src=\"images/Gallary/imgC$id/icon.png\">
    </a>
	";
	
	$get_photos=mysql_query("SELECT * FROM photos WHERE album_title='$album_title'");
	$numrows2=mysql_num_rows($get_photos);
	while($row2=mysql_fetch_assoc($get_photos))
	{
		$id2=$row2['id'];
		$loc=$row2['location'];
		$album_title2=$row2['album_title'];
		if($loc=="images/Gallary/imgC$id/$id (1).jpg") #exclude the first picture as it is shown when we first click on a link
		{
			continue;
		}
		else
		{
		
			echo "
			<a href=\"$loc\" title=\"$album_title2\" data-gallery=\"#blueimp-gallery-imgC$id\"></a>
		
			";
		}


	}
	echo "</div>";

}

?>

</div>
</div>
</div>

 <div class="container-fluid vdoGallery">
 <div class="row">
 <div class="col-xs-4 col-md-4">
<img src="images/TEXT/cooltext1652915653.png" class="img-responsive galaryhead">
</div>
<div class="col-xs-8 col-md-8">
<script src="https://apis.google.com/js/platform.js"></script>

<div class="g-ytsubscribe" data-channelid="UCHsodhRyiuri2jD7H7nfsRg" data-layout="full" data-count="default"></div>
</div>
</div><!--------row--------->
<div class="row">
<div class="col-xs-4 col-md-4">
<iframe width="400" height="300" src="http://www.youtube.com/embed/sYW65_W4RYU" frameborder="0" allowfullscreen></iframe>
</div><!----end coloumn------>
<div class="col-xs-4 col-md-4">
<iframe width="400" height="300" src="http://www.youtube.com/embed/LdcDsVU4Akw" frameborder="0" allowfullscreen></iframe>
</div><!----end coloumn------>
<div class="col-xs-4 col-md-4">
<iframe width="400" height="300" src="http://www.youtube.com/embed/pAHjeUTgu8o" frameborder="0" allowfullscreen></iframe>
</div><!----end coloumn------>
</div><!-------row end-------->
 </div>


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
<script src="js/jquery.blueimp-gallery.min.js"></script>
<script src="js/bootstrap-image-gallery.min.js"></script>


</body>