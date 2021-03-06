<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Dashboard</title>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/courses.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/sb-admin.css" rel="stylesheet">


<!-- Morris Charts CSS -->
<link href="css/plugins/morris.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<script type="text/javascript" src="js/jquery.js"></script>
<link rel="stylesheet" href="css/datepicker.css">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/scripts.js"></script>
<script>
	$(function() {
		$("#header").load("header.html");
	});

	$(function() {
		$('.panel').hover(function() {
			$(this).find('.panel-footer').slideDown(250);
		}, function() {
			$(this).find('.panel-footer').slideUp(250); //.fadeOut(205)
		});
	})
	
</script>
<script type="text/javascript">

function values(){
	var x = document.getElementById("mymodal");
    var cname = document.getElementById("cname").value;
    var sdate = document.getElementById("sdate").value;
    var edate = document.getElementById("edate").value;
    addCourse(cname,sdate,edate);
}
function addCourse(cname,sdate,edate){
	
	var issue_num = document.getElementById("panel-body").childNodes.length;
	console.log(issue_num);
	var coursename=document.createElement("h2");
	coursename.innerHtml=""+cname;
	var divTag = document.createElement("div");
	divTag.class="center";
	divTag.id =  ""+issue_num;
	document.getElementById("panel-body").appendChild(divTag);
	
	var startdate=document.createElement("h6");
	startdate.innerHTML=""+sdate;
	document.getElementById(""+issue_num).appendChild(startdate);
	
	var enddate = document.createElement("h6");
	endate.innerHtml = ""+edate;
	document.getElementById(""+issue_num).appendChild(edate);
	console.log(document.getElementById("panel-body").childNodes.length);
}
</script>

</head>

<body>

	<div id="wrapper">
		<!-- Navigation -->

		<div id="header"></div>
		<div id="page-wrapper">

			<div class="container-fluid">

				<!-- Page Heading -->
				<div class="row" >
					<div class="col-lg-12">
						<h1 class="page-header">Courses</h1>
						<ol class="breadcrumb">
							<li><i class="fa fa-dashboard"></i> <a href="dashboard.html">Dashboard</a>
							</li>
							<li class="active"><i class="fa fa-bar-chart-o"></i> Courses
							</li>
						</ol>
					</div>
				</div>
				<!-- /.row -->

				<div class="row">
					<div class="col-md-3 col-sm-6 col-xs-6">
						<div class="panel panel-default">
							<div class="panel-body">
								<h2 id="coursename">Java</h2>
								<div class="center">
									<h6>
										<b>Start Date: 02-02-2015</b>
									</h6>
									<h6>
										<b>End Date: 28-02-2015</b>
									</h6>
								</div>
							<div class="panel-footer">
								<a href="mentor_course_content.html">Goto Course</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div style="text-align: center" class="form-buttons-wrapper">
				<button type="button" id="addcourse" class="btn btn-primary btn-lg"
					data-toggle="modal" data-target="#myModal">Add Course</button>
			</div>
		</div>

	</div>
	<!-- /.container-fluid -->
	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h3 class="modal-title" id="myModalLabel">Course Form</h3>
				</div>
				<div class="modal-body">
					<div class="details">
						<form role="form">
							<div class="form-group">
								<label>Course Name* :</label> <input type="text"
									required="required" class="form-control" id="cname">

							</div>
							<div class="form-group">
								<div class="hero-unit">
									<label>Start Date:</label> <input type="date"
										class="form-control" id="sdate">
								</div>
							</div>
							<div class="form-group">
								<div class="hero-unit">
									<label>End Date:</label> <input type="date"
										class="form-control" id="edate">
								</div>
							</div>
							
							<button id="myBtn" type="submit" class="btn btn-default" onclick="values()">Submit</button>
						</form>
					</div>

				</div>
				<script src="js/jquery.min.js"></script>
				<script src="js/bootstrap-datepicker.js"></script>
				<script type="text/javascript">
							// When the document is ready
							$(document).ready(function() {

								$('#example1').datepicker({
									format : "dd/mm/yyyy"
								});

							});
						</script>
				<script type="text/javascript">
				function myFunction() {
				    
				}
				</script>
			</div>
		</div>
	</div>
	

	<!-- /#page-wrapper -->

	<!-- jQuery -->

	<!-- Morris Charts JavaScript -->
	<script src="js/plugins/morris/raphael.min.js"></script>
	<script src="js/plugins/morris/morris.min.js"></script>
	<script src="js/plugins/morris/morris-data.js"></script>

	<!-- Flot Charts JavaScript -->
	<!--[if lte IE 8]><script src="js/excanvas.min.js"></script><![endif]-->
	
</body>

</html>
