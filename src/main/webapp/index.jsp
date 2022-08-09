<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="java.util.*,com.sec.model.Quiz"%>



<!DOCTYPE html>
<html lang="en">
<head>
<title>JavaWalla - Free Education</title>
<meta charset="UTF-8">
<meta name="description" content="WebUni Education Template">
<meta name="keywords" content="webuni, education, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1" /> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Favicon -->
<link href="img/favicon.ico" rel="shortcut icon" />

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Raleway:400,400i,500,500i,600,600i,700,700i,800,800i"
	rel="stylesheet">

<!-- Stylesheets -->
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/font-awesome.min.css" />
<link rel="stylesheet" href="css/owl.carousel.css" />
<link rel="stylesheet" href="css/style.css" />


<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header section -->
	<header class="header-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-3">
					<div class="site-logo">
						<img src="img/logo - Copy.PNG" alt="" width="50%">
					</div>
					<div class="nav-switch">
						<i class="fa fa-bars"></i>
					</div>
				</div>
				<div class="col-lg-9 col-md-9">
					<nav class="main-menu">
						<ul>
						   <li><a href="indexlk.html" class="site-btn header-btn">Sign/Sign Up</a></li>
							<li><a href="index.jsp">Home</a></li>
							<li><a href="#">About us</a></li>
							<li><a href="#cou">Mock Test</a></li>
							<li><a href="blog.html">News</a></li>
							<li><a href="#con">Contact</a></li>
							<li><a href="https://javawalla.blogspot.com/">Jobs</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- Header section end -->


	<!-- Hero section -->
	<section class="hero-section set-bg" data-setbg="img/bg.jpg">
		<div class="container">
			<div class="hero-text text-white">
				<h2>Get The Best Free Online Mock Test</h2>
			</div>

			<div class="row">
				<div class="column slider" style="background-color: white;">
					<h2 style="color: #dc3545">Latest Quiz</h2>
					<!--<marquee direction="up" style="color:#dc3545">-->
					<%

List<Quiz> qo=(List<Quiz>)session.getAttribute("xxx") ; 
%>
					<table>
						<%int number=qo.size();
for(int i=0;i<number;i++)
{
%>
						<tr>
							<td><a style="color: blue; font-size: 20px"
								href="#cou"><b><%=qo.get(i).getName()%></b></a></td>
						</tr>

						<%} %>
					</table>
				</div>
				<div class="column slider" style="background-color: white;">
					<h2 style="color: #dc3545">Latest Jobs</h2>

					<%

List<Quiz> jobs=(List<Quiz>)session.getAttribute("xxx") ; 
%>
					<table>
						<%int number1=qo.size();
for(int i=0;i<number;i++)
{
%>
						<tr>
							<td><a style="color: blue; font-size: 20px"
								href=<%=qo.get(i).getLink()%>><b><%=qo.get(i).getName()%></b></a></td>
						</tr>

						<%} %>
					</table>
				</div>
			</div>
		</div>
	</section>
	<!-- Hero section end -->


	<!-- categories section -->
	<section class="categories-section spad">
		<div class="container">
			<div class="section-title" id="jobs">
				<h2>Course For You</h2>
			</div>
			<div class="row">
				<!-- categorie -->
				<div class="col-lg-4 col-md-6">
					<div class="categorie-item">
					<form action="/getQuestion" method="get">
					<div class="ci-thumb set-bg" data-setbg="img/categories/Core-Java-Pro.jpg"></div>
						<div class="ci-text">
							<button class="button"><h5>Core Java</h5></button>
							</form>
							<p>Core Java Basic Interview Question</p>
							<span>120 Student</span>
						</div>
					</div>
				</div>
				<!-- categorie -->
				<div class="col-lg-4 col-md-6">
					<div class="categorie-item">
					<form action="/getSpringBoot" method="get">
						<div class="ci-thumb set-bg" data-setbg="img/categories/spring-boot-logo.png"></div>
						<div class="ci-text">
							<button class="button"><h5>Spring Boot</h5></button>
							</form>
							<p>Core Java Basic Interview Question</p>
							<span>25 Student</span>
						</div>
					</div>
				</div>
				<!-- categorie -->
				<div class="col-lg-4 col-md-6">
					<div class="categorie-item">
						<div class="ci-thumb set-bg" data-setbg="img/categories/jo.jpg"></div>
						<div class="ci-text">
						<button class="button">	<h5><a href="https://javawalla.blogspot.com">Jobs</a></h5></button>
							<p>Core Java Basic Interview Question</p>
							<span>55 Courses</span>
						</div>
					</div>
				</div>
				<!-- categorie -->
				<!-- <div class="col-lg-4 col-md-6">
					<div class="categorie-item">
						<div class="ci-thumb set-bg" data-setbg="img/categories/4.jpg"></div>
						<div class="ci-text">
							<h5>Social Media</h5>
							<p>Lorem ipsum dolor sit amet, consectetur</p>
							<span>40 Courses</span>
						</div>
					</div>
				</div>
				<!-- categorie 
				<div class="col-lg-4 col-md-6">
					<div class="categorie-item">
						<div class="ci-thumb set-bg" data-setbg="img/categories/5.jpg"></div>
						<div class="ci-text">
							<h5>Photoshop</h5>
							<p>Lorem ipsum dolor sit amet, consectetur</p>
							<span>220 Courses</span>
						</div>
					</div>
				</div>
				<!-- categorie 
				<div class="col-lg-4 col-md-6">
					<div class="categorie-item">
						<div class="ci-thumb set-bg" data-setbg="img/categories/6.jpg"></div>
						<div class="ci-text">
							<h5>Cryptocurrencies</h5>
							<p>Lorem ipsum dolor sit amet, consectetur</p>
							<span>25 Courses</span>
						</div>
					</div>
				</div>-->
			</div>
		</div>
	</section>
	<!-- categories section end -->


	<!-- search section 
	<section class="search-section">
		<div class="container">
			<div class="search-warp">
				<div class="section-title text-white">
					<h2>Search your course</h2>
				</div>
				<div class="row">
					<div class="col-md-10 offset-md-1">
						<!-- search form 
						<form class="course-search-form">
<select name="cars" id="cars" style="width:300px;height:60px">
    <option value="volvo">Volvo</option></a>
    <option value="saab">Saab</option>
    <option value="opel">Opel</option>
    <option value="audi">Audi</option>
  </select>							
							<button class="site-btn">Search Couse</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section> -->
	<!-- search section end -->


	<!-- course section -->
	<section class="course-section spad">
		<div class="container">
			<div class="section-title mb-0">
				<h2>Featured Courses</h2>
				<p><b style="font-size: 20px">"Education is the passport to the future, for tomorrow belongs to those who prepare for it today"</b></p>
			</div>
		</div>
		<div class="course-warp" id="cou">
			<ul class="course-filter controls">
				<li class="control active" data-filter="all">All</li>
				<li class="control" data-filter=".finance" >Spring Framework</li>
				<li class="control" data-filter=".design">Database</li>
				<li class="control" data-filter=".web">Web Development</li>
				<li class="control" data-filter=".photo">Java</li>
			</ul>
			<div class="row course-items-area">
				<!-- course -->
				<div class="mix col-lg-3 col-md-4 col-sm-6 finance" >
					<div class="course-item">
						<div class="course-thumb set-bg" data-setbg="img/courses/1.jpg">

						</div>
						<div class="course-info">
							<div class="course-text" id="sp">
							<form action="/getPage/springmvc" method="get">
								<p>Lorem ipsum dolor sit amet, consectetur</p>
								<div class="students">120 Students</div>
								<button class="button"><h5>Spring MVC</h5></button>
								</form>
							</div>

						</div>
					</div>
				</div>
				<!-- course -->
				<div class="mix col-lg-3 col-md-4 col-sm-6 design">
					<div class="course-item">
						<div class="course-thumb set-bg" data-setbg="img/courses/2.jpg">

						</div>
						<div class="course-info">
							<div class="course-text">
									<form action="/getPage/sql" method="get">
								<p>Lorem ipsum dolor sit amet, consectetur</p>
								<div class="students">120 Students</div>
								<button class="button"><h5>SQL</h5></button>
								</form>
							</div>

						</div>
					</div>
				</div>
				<!-- course -->
				<div class="mix col-lg-3 col-md-4 col-sm-6 web">
					<div class="course-item">
						<div class="course-thumb set-bg" data-setbg="img/courses/3.jpg">

						</div>
						<div class="course-info">
							<div class="course-text">
									<form action="/getPage/html" method="get">
								<p>Lorem ipsum dolor sit amet, consectetur</p>
								<div class="students">120 Students</div>
								<button class="button"><h5>HTML</h5></button>
								</form>
							</div>

						</div>
					</div>
				</div>
				<!-- course -->
				<div class="mix col-lg-3 col-md-4 col-sm-6 photo">
					<div class="course-item">
						<div class="course-thumb set-bg" data-setbg="img/courses/4.jpg">

						</div>
						<div class="course-info">
							<div class="course-text">
									<form action="/getPage/string" method="get">
								<p>Lorem ipsum dolor sit amet, consectetur</p>
								<div class="students">120 Students</div>
								<button class="button"><h5>String</h5></button>
								</form>
							</div>

						</div>
					</div>
				</div>
				<div class="mix col-lg-3 col-md-4 col-sm-6 photo">
					<div class="course-item">
						<div class="course-thumb set-bg" data-setbg="img/courses/4.jpg">

						</div>
						<div class="course-info">
							<div class="course-text">
								<form action="/getPage/collection" method="get">
								<p>Lorem ipsum dolor sit amet, consectetur</p>
								<div class="students">120 Students</div>
								<button class="button"><h5>Collection</h5></button>
								</form>
							</div>

						</div>
					</div>
				</div>
				<div class="mix col-lg-3 col-md-4 col-sm-6 photo">
					<div class="course-item">
						<div class="course-thumb set-bg" data-setbg="img/courses/4.jpg">

						</div>
						<div class="course-info">
							<div class="course-text">
									<form action="/getPage/multithreading" method="get">
								<p>Lorem ipsum dolor sit amet, consectetur</p>
								<div class="students">120 Students</div>
								<button class="button"><h5>MultiThreading</h5></button>
								</form>
							</div>

						</div>
					</div>
				</div>
				<!-- course -->
				<div class="mix col-lg-3 col-md-4 col-sm-6 finance">
					<div class="course-item">
						<div class="course-thumb set-bg" data-setbg="img/courses/5.jpg">

						</div>
						<div class="course-info">
							<div class="course-text">
									<form action="/getPage/Springboot" method="get">
								<p>Lorem ipsum dolor sit amet, consectetur</p>
								<div class="students">120 Students</div>
								<button class="button"><h5>Spring Boot</h5></button>
								</form>
							</div>

						</div>
					</div>
				</div>
				<!-- course -->
				<div class="mix col-lg-3 col-md-4 col-sm-6 design">
					<div class="course-item">
						<div class="course-thumb set-bg" data-setbg="img/courses/6.jpg">

						</div>
						<div class="course-info">
							<div class="course-text">
									<form action="/getPage/mysql" method="get">
								<p>Lorem ipsum dolor sit amet, consectetur</p>
								<div class="students">120 Students</div>
								<button class="button"><h5>MYSQL</h5></button>
								</form>
							</div>

						</div>
					</div>
				</div>
				<!-- course -->
				<div class="mix col-lg-3 col-md-4 col-sm-6 web">
					<div class="course-item">
						<div class="course-thumb set-bg" data-setbg="img/courses/7.jpg">

						</div>
						<div class="course-info">
							<div class="course-text">
									<form action="/getPage/javascript" method="get">
								<p>Lorem ipsum dolor sit amet, consectetur</p>
								<div class="students">120 Students</div>
								<button class="button" style="vertical-align:middle"><h5>JavaScript</h5></button>
								</form>
							</div>

						</div>
					</div>
				</div>
				<!-- course -->
				<div class="mix col-lg-3 col-md-4 col-sm-6 photo">
					<div class="course-item">
						<div class="course-thumb set-bg" data-setbg="img/courses/8.jpg">

						</div>
						<div class="course-info">
							<div class="course-text">
									<form action="/getPage/exception" method="get">
								<p>Lorem ipsum dolor sit amet, consectetur</p>
								<div class="students">120 Students</div>
								<button class="button"><h5>Exception</h5></button>
								</form>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- course section end -->


	<!-- signup section 
	<section class="signup-section spad">
		<div class="signup-bg set-bg" data-setbg="img/signup-bg.jpg"></div>
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-6">
					<div class="signup-warp">
						<div class="section-title text-white text-left">
							<h2>Sign up to became a teacher</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec malesuada lorem maximus mauris scelerisque, at rutrum nulla dictum. Ut ac ligula sapien. Suspendisse cursus faucibus finibus.</p>
						</div>
						<!-- signup form 
						<form class="signup-form">
							<input type="text" placeholder="Your Name">
							<input type="text" placeholder="Your E-mail">
							<input type="text" placeholder="Your Phone">
							<label for="v-upload" class="file-up-btn">Upload Course</label>
							<input type="file" id="v-upload">
							<button class="site-btn">Search Couse</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section> -->
	<!-- signup section end -->


	<!-- banner section 
	<section class="banner-section spad">
		<div class="container">
			<div class="section-title mb-0 pb-2">
				<h2>Join Our Community Now!</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec malesuada lorem maximus mauris scelerisque, at rutrum nulla dictum. Ut ac ligula sapien. Suspendisse cursus faucibus finibus.</p>
			</div>
			<div class="text-center pt-5">
				<a href="#" class="site-btn">Register Now</a>
			</div>
		</div>
	</section>
	banner section end    -->
	<section class="contact-page spad pb-0" id="con">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="contact-form-warp">
						<div class="section-title text-white text-left">
							<h2>Get in Touch</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Donec malesuada lorem maximus mauris scelerisque, at rutrum
								nulla dictum. Ut ac ligula sapien.</p>
						</div>
						<form class="contact-form">
							<input type="text" placeholder="Your Name"> <input
								type="text" placeholder="Your E-mail"> <input
								type="text" placeholder="Subject">
							<textarea placeholder="Message"></textarea>
							<button class="site-btn">Sent Message</button>
						</form>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="contact-info-area">
						<div class="section-title text-left p-0">
							<h2>Contact Info</h2>
							<p>Donec malesuada lorem maximus mauris scelerisque, at
								rutrum nulla dictum. Ut ac ligula sapien. Suspendi sse cursus
								faucibus finibus.</p>
						</div>
						<div class="phone-number">
							<span>Direct Line</span>
							<h2>+91 9898989898</h2>
						</div>
						<ul class="contact-list">
							<li>Amar Nayak<br>Mangalpur,Odisha
							</li>
							<li>+917978913171</li>
							<li>amarnayak9697@gmail.com</li>
						</ul>
						<div class="social-links">
							<a href="#"><i class="fa fa-pinterest"></i></a> <a href="#"><i
								class="fa fa-facebook"></i></a> <a href="#"><i
								class="fa fa-twitter"></i></a> <a href="#"><i
								class="fa fa-dribbble"></i></a> <a href="#"><i
								class="fa fa-behance"></i></a> <a href="#"><i
								class="fa fa-linkedin"></i></a>
						</div>
					</div>
				</div>
			</div>

		</div>
	</section>

	<!-- footer section -->
	<footer class="footer-section spad pb-0">
		<div class="footer-top">
			<div class="footer-warp">
				<div class="row">
					<div class="widget-item">
						<h4>Contact Info</h4>
						<ul class="contact-list">
							<li>1481 Creekside Lane <br>Avila Beach, CA 931
							</li>
							<li>+989898989</li>
							<li>amarnayak9697@gmail.com</li>
						</ul>
					</div>
					<div class="widget-item">
						<h4>Interview Question</h4>
						<ul>
							<li><a href="">Java Interview Question</a></li>
							<li><a href="">Computer Engeneering</a></li>
							<li><a href="">Software Engeneering</a></li>
							<li><a href="">Informational Engeneering</a></li>
							<li><a href="">System Engeneering</a></li>
						</ul>
					</div>
					<div class="widget-item">
						<h4>Graphic Design</h4>
						<ul>
							<li><a href="">Applied Studies</a></li>
							<li><a href="">Computer Engeneering</a></li>
							<li><a href="">Software Engeneering</a></li>
							<li><a href="">Informational Engeneering</a></li>
							<li><a href="">System Engeneering</a></li>
						</ul>
					</div>
					<div class="widget-item">
						<h4>Development</h4>
						<ul>
							<li><a href="">Applied Studies</a></li>
							<li><a href="">Computer Engeneering</a></li>
							<li><a href="">Software Engeneering</a></li>
							<li><a href="">Informational Engeneering</a></li>
							<li><a href="">System Engeneering</a></li>
						</ul>
					</div>
					<div class="widget-item">
						<h4>Newsletter</h4>
						<form class="footer-newslatter">
							<input type="email" placeholder="E-mail">
							<button class="site-btn">Subscribe</button>
							<p>*We don’t spam</p>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-bottom">
			<div class="footer-warp">
				<ul class="footer-menu">
					<li><a href="#">Terms & Conditions</a></li>
					<li><a href="#">Register</a></li>
					<li><a href="#">Privacy</a></li>
				</ul>
				<div class="copyright">
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					Copyright &copy;
					<script>document.write(new Date().getFullYear());</script>
					All rights reserved | This template is made with <i
						class="fa fa-heart-o" aria-hidden="true"></i> by <a
						href="https://colorlib.com" target="_blank">Colorlib</a>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
				</div>
			</div>
		</div>
	</footer>
	<!-- footer section end -->


	<!--====== Javascripts & Jquery ======-->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/mixitup.min.js"></script>
	<script src="js/circle-progress.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>
	<style>
.column {
	float: center;
	margin: auto;
	width: 40%;
	padding: 20px;
	height: 200px; /* Should be removed. Only for demonstration */
}

/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	margin: auto;
	clear: both;
}
.slider {
height:200px;
  display: grid;
  overflow-x: auto;
}

.button {
  display: inline-block;
  padding: 10px 35px;
  font-size: 15px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #d82a4e;;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
</style>
</html>