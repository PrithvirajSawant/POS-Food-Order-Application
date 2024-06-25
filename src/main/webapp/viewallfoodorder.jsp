<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Users Food Orders</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/preloader.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/cursor.css' />">
<style type="text/css">

* {
	margin: 0;
	padding: 0;
}

main{
margin-bottom: 40px;

}

body {
	font-family: Sans-serif;
	background-color: #f3f7f9;
}

.img1 {
	display: flex;
	position: fixed;
	bottom: 0;
	height: 350px;
}

.img2 {
	display: flex;
	position: fixed;
	padding: 10px;
	bottom: 9;
	height: 300px;
	margin-left: 1050px;
	margin-bottom: 700px;
	top: 7%;
	
}

.conav {
	height: 60px;
	width:100vw;
	display: flex;
	justify-content:center;
	/*border: 2px solid red;*/
	background-color: #ffffff;
	position: fixed;
	
}

.nav {
	display:flex;
	height: 40px;
	width: 100%;
	/*border: 2px solid white;*/
	padding: 1px;
	justify-content: flex-end;
	margin: auto;
	align-items: center;
	padding-right: 5px;
}

.link a {
	font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS',
		sans-serif;
	text-decoration: none;
	margin: 10px;
	padding: 20px;
	color: white;
}

.link {
	text-decoration: none;
	padding: 9px;
	margin-right: 1200px;
	background-color: #f5680f;
	color: white;
	border-radius: 12px;
	row-gap: 30px;
	/*position: fixed;*/
}

.link a:hover {
	color: #c9c3c6;
}

h1{
font-family: Impact;
text-align: center;
padding: 20px;
}

.container0{
display: flex;
justify-content: center;
}

.container{
width:40%;
display:flex;
justify-content:center;
align-items:flex-end;
border-radius: 20px;
margin: 5px;
padding: 20px;
padding-top:30px;
text-align: center;
font-family:Cambria;
background-color:#f6f4e9;
}

.container:hover{
background-color: #f5680f; 
cursor: text;
}

hr {
	border-radius: 20px;
	width: 200px;
	margin: 15px;
}

footer {
	/*position: fixed;*/
	bottom: 0;
	height: 50px;
	width: 100%;
}

.nav2 {
	padding: 15px;
	background-color: black;
	height: 100px;
	display: flex;
	justify-content: center;
	gap: 15px;
	align-items: center;
}

.nav2 a {
	text-decoration: none;
	margin: 10px;
	padding: 20px;
	height: 400px;
	color: white;
	margin-left: 10px;
	font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS',
		sans-serif;
}

.link2 a {
	padding: 10px;
	margin: 0px;
	width: 10px;
}

.link2 a:hover {
	color: #c9c3c6;
}

.row{
display: flex;
justify-content: center;
padding-left:80px; 
}

.modify{
/*border:2px solid black;*/
display:flex;
padding:10px;
width:50%;
justify-content: center;
margin-left:55px;
}
.modify a{
/*border: 2px solid green;*/
margin: 10px;
}

/* The whole scroll bar */
::-webkit-scrollbar {
    width: 5px; /* Width of the scroll bar */
}

/* The scroll bar track */
::-webkit-scrollbar-track {
    background: #f1f1f1; /* Color of the track */
}

/* The scroll bar handle */
::-webkit-scrollbar-thumb {
    background: #888; /* Color of the handle */
    border-radius: 6px; /* Rounded corners */
}

/* Hover effect for the scroll bar handle */
::-webkit-scrollbar-thumb:hover {
    background: #f5680f; /* Color when hovered */
}
</style>
</head>
<body>
<!-- PreLoading -->
	<div id="pre_loder">
		<!-- <div class="loader"></div> -->
		<!-- <div class="loader2"></div> -->
		<div id="loader3"></div>
	</div>
	<!-- CURSOR -->
		<div class="cursor">
			<div class="cr_circle"></div>
			<div class="cr_circle"></div>
			<div class="cr_circle"></div>
			<div class="cr_circle"></div>
			<div class="cr_circle"></div>
			<div class="cr_circle"></div>
			<div class="cr_circle"></div>
			<div class="cr_circle"></div>
			<div class="cr_circle"></div>
			<div class="cr_circle"></div>
			<div class="cr_circle"></div>
			<div class="cr_circle"></div>
			<div class="cr_circle"></div>
			<div class="cr_circle"></div>
			<div class="cr_circle"></div>
			<div class="cr_circle"></div>
			<div class="cr_circle"></div>
			<div class="cr_circle"></div>
			<div class="cr_circle"></div>
			<div class="cr_circle"></div>
		</div>
<main>

<div class="conav">
			<div class="nav">
				<div class="link">
					 <a href="useroptions.jsp"><i
					class="bi bi-arrow-left-circle-fill"></i> Back</a> 
				</div>
			</div>
		</div>
		<img class="img1" alt="My Image" src="<c:url value="/resources/images/cheesecake.png" />">
		<img class="img2" alt="My Image" src="<c:url value="/resources/images/cherry-br.png" />">
<h1>Previous Food Orders</h1>
    <c:forEach var="order" items="${previousOrders}">
    <div class="container0">
        <div class="container">
          <div>
          	<h2>Customer ID: ${user.id}</h2>
          	<hr>
            <h3>FoodOrder ID: ${order.id}</h3>
            <hr>
            <p>Order Name: ${order.name}</p>
            <hr>
            <p>Mobile Number: ${order.number}</p>
            <hr>
            <p>Total Cost: ${order.totalCost}</p>
            <hr>
          </div>
	</div>
            <!-- Add more details as needed -->
        </div>
        	
    </c:forEach>
</main>
<footer>
		<div class="nav2">
			<div class="link2">
				<a href="useroptions.jsp"><i
					class="bi bi-arrow-left-circle-fill"></i> Back</a>
			</div>
		</div>
	</footer>
	<script
		src="<c:url value='https://cdnjs.cloudflare.com/ajax/libs/bodymovin/5.12.2/lottie.min.js' />"></script>
	<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/bodymovin/5.12.2/lottie.min.js"></script> -->
	<script>
		const jsonPath = '<c:url value="/resources/Json/pan.json" />';
	</script>
	<script src="<c:url value='/resources/scripts/preloader.js' />"></script>
	<script src="<c:url value='/resources/scripts/cursor.js' />"></script>
</body>
</html>