<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>    
<div class="row">
	<!-- left-bar -->
	<div class="col-sm-2 adv">
		<a href="">
			<img width="100%" src="./resources/images/adv1.gif">
		</a>
		<a href="">
			<img width="100%" src="./resources/images/adv1.gif">
		</a>
	</div>

	<!-- main --------------------------------------------------------------------------> 
	<div class="col-sm-6 main" ng-controller="IndexController">
			
			<div class="col-md-12 item" ng-repeat="tr in listTR">
				<a href="">
					<img class="col-md-3" ng-src="resources/images/{{tr.images}}">
					<div class="col-md-6">
						<h5 ng-bind="tr.name"></h5>
						<p class="preview-text" ng-bind="tr.contant">
						</p>
					</div>
				</a>
			</div>
	</div>
	<!-- main --------------------------------------------------------------------------> 

	<!-- right-bar -->
	<div class="col-sm-4 right">
		<div class="col-sm-12 top-rating">
			<h4>Top rating</h4>
			<ul>
				<li>
					<a class="col-sm-7" href="">Sò lông</a>
					<p class="col-sm-5">
						<span class="glyphicon glyphicon-star"></span>
						<span class="glyphicon glyphicon-star"></span>
						<span class="glyphicon glyphicon-star"></span>
						<span class="glyphicon glyphicon-star"></span>
						<span class="glyphicon glyphicon-star"></span>

					</p>
				</li>
				<li>
					<a class="col-sm-7" href="">Hiệu hãm</a>
					<p class="col-sm-5">
						<span class="glyphicon glyphicon-star"></span>
						<span class="glyphicon glyphicon-star"></span>
						<span class="glyphicon glyphicon-star"></span>
						<span class="glyphicon glyphicon-star-empty"></span>
						<span class="glyphicon glyphicon-star-empty"></span>
					</p>
				</li>
				<li>
					<a class="col-sm-7" href="">Huy hãm ***</a>
					<p class="col-sm-5">
						<span class="glyphicon glyphicon-star"></span>
						<span class="glyphicon glyphicon-star"></span>
						<span class="glyphicon glyphicon-star"></span>
						<span class="glyphicon glyphicon-star"></span>
						<span class="glyphicon glyphicon-star-empty"></span>
						
					</p>
				</li>
			</ul>
		</div>

		<div class="col-sm-12 last-cmt">
			<h4>Last comment</h4>
		</div>
	</div> 
</div>

<div class="navbar navbar-default navbar-fixed-bottom wrapper">
	<div class="end-text">
		<p class="col-sm-3">
			Design by TEAM 4 © 2017
			<!-- a href="#" -->
		</p>
		<spain class="col-sm-6"></spain>
		<p class="col-sm-3 version">Version 18.1</p>
	</div>
</div>
</div>

</body>
</html>