<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>Demo Page</title>
	<meta charset="UTF-8">
	<link rel="icon" href="./resources/images/icon.jpg">
	<script src="<c:url value="/resources/jquery/jquery.min.js" />"></script>
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/bootstrap/bootstrap.min.css"/>">
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/bootstrap/bootstrap-glyphicons.css"/>">
	<script type="text/javascript" src="<c:url value="/resources/bootstrap/bootstrap.min.js"/>"></script>
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/main.css"/>">		
	<script src="<c:url value="/resources/angular/angular.min.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/app.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/service/service.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/controller/controller.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/main.js"/>"></script>
</head>
<body ng-app="myApp" ng-controller="HeaderController">
	<div class="container">
		<!-- LoginForm ------>
			<div id="id01" class="modal row">
				<div class="col-md-4"></div>
				  <form class="modal-content animate col-md-4" action="/action_page.php">
				    <div class="imgcontainer">
				      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
				      <img src="./resources/images/img_avatar2.png" alt="Avatar" class="avatar">
				    </div>

				    <div class="containerr">
				      <label><b>Username</b></label>
				      <input class="form-control" type="text" placeholder="Enter Username" name="uname" required>
				      <br />
				      <label><b>Password</b></label>
				      <input class="form-control" type="password" placeholder="Enter Password" name="psw" required>
				        
				      <br />
				      <input type="checkbox" checked="checked"> Remember me
				      <br /><br />
				      <button class="btn enterLogin" type="submit">Login</button>
				    </div>
				  </form>
			  	<div class="col-md-4"></div>
			</div>
			<script>
				// Get the modal
				var modal = document.getElementById('id01');

				// When the user clicks anywhere outside of the modal, close it
				window.onclick = function(event) {
				    if (event.target == modal) {
				        modal.style.display = "none";
				    }
				}
			</script>
			<!--end LoginForm ------>



		<!-- menu bar dropdown -->
		<nav class="navbar-default wrapper navbar-fixed-top">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">
					<img class="background" src="./resources/images/bac.png" alt="Home">
				</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse top">
				<ul class="nav navbar-nav">
					<li class="">
						<a href="#">
							<span class="glyphicon glyphicon-home"></span>
							 Home
						</a>
					</li>
					<li class="dropdown">

						<a class="dropdown-toggle" data-toggle="dropdown" href="#">
							<span class="glyphicon glyphicon-list"></span>
							 Thể loại <span class="caret "></span>
						</a>
						<ul class="dropdown-menu" >
							<li ng-repeat="tl in listTL"><a ng-click="listTRbyid(tl.id)" ng-bind="tl.name"></a></li>
						</ul>
					</li>
					<li>
						<a href="#">
							<span class="glyphicon glyphicon-eye-open"></span> Giới thiệu
						</a>
					</li>
					<li>
						<a href="#">
							<span class="glyphicon glyphicon-envelope"></span> Liên hệ
						</a>
					</li>
					
				</ul>
				<ul class="nav navbar-nav navbar-right login">
					<li>
						<form id="search">
							<input type="text" name="search" placeholder="Search..">
						</form>
					</li>
					<li>
						<!-- <a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a> -->
						<button class="btnSignup" onclick="document.getElementById('id02').style.display='block'"><span class="glyphicon glyphicon-user"></span> Đăng ký</button>
					</li>
					<li>
						<button class="btnLogin" onclick="document.getElementById('id01').style.display='block'"><span class="glyphicon glyphicon-log-in"></span> Đăng nhập</button>
					</li>
				</ul>
				
			</nav>
			

			<!-- end menu bar -->
			<!-- slide -->
			<div class="slideshow-container">

				<a href="#" class="mySlides fade">
					<img src="./resources/images/slide/1.jpg" style="width:100%">
					<div class="text">Caption Text</div>
				</a href="#">

				<a href="#" class="mySlides fade">
					<img src="./resources/images/slide/2.jpg" style="width:100%">
					<div class="text">Caption Two</div>
				</a href="#">

				<a href="#" class="mySlides fade">
					<img src="./resources/images/slide/3.jpg" style="width:100%">
					<div class="text">Caption Three</div>
				</a href="#">

			</div>
			<br>

			<div style="text-align:center">
				<span class="dot"></span> 
				<span class="dot"></span> 
				<span class="dot"></span> 
			</div>

			<script>
				var slideIndex = 0;
				showSlides();

				function showSlides() {
					var i;
					var slides = document.getElementsByClassName("mySlides");
					var dots = document.getElementsByClassName("dot");
					for (i = 0; i < slides.length; i++) {
						slides[i].style.display = "none";  
					}
					slideIndex++;
					if (slideIndex > slides.length) {slideIndex = 1}    
					for (i = 0; i < dots.length; i++) {
						dots[i].className = dots[i].className.replace(" active", "");
					}
					slides[slideIndex-1].style.display = "block";  
					dots[slideIndex-1].className += " active";
		    		setTimeout(showSlides, 2000); // Change image every 2 seconds
				}
			</script>
<!-- end slide -->