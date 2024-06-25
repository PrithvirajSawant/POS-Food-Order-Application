<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User List</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://kit.fontawesome.com/ed89acff3c.js" crossorigin="anonymous"></script>
<!-- Vendor CSS Files -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/preloader.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/cursor.css' />">

<style type="text/css">

/** 
   *Skill Card 
   */
* {
	margin: 0;
	padding: 0;
}

main{
margin-top:4%;
margin-bottom: 40px;
}

.conav {
	top:0;
	height: 60px;
	width:100vw;
	display: flex;
	justify-content:center;
	/*border: 2px solid red;*/
	background-color: #ffffff;
	position: fixed;
	z-index: 1;
}

.nav {
	display: flex;
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

body {
	font-family: Sans-serif;
	background-color: #f3f7f9;
}

h1 {
	text-align: center;
	margin: 40px;
	font-family: Impact;
}

.skill_card {
	background-color: #000000;
	background-color: #f5680f;
	background-color: #dfdfdf;
	box-shadow: 5px 5px 20px #000;
	padding: 10px;
	/*color: #ffffff;*/
	color: #000000;
	width:300px;
	opacity: 70%;
}

.skill_card:hover{
background-color: #000000;
color:#ffffff;
opacity: 80%;
}

.card-body a {
	background-color: #ffffff;
	border-radius: 6px; 
	text-decoration : none;
	padding: 10px;
	color: #000000;
	text-decoration: none;
}

.card-body a:hover{
background-color:#000000;
color:#ffffff;
}

.skill_card_sp {
	padding-top: 50px;
	padding-bottom: 30px;
}

.card-body {
	display: flex;
	align-items: baseline;
	/* align-items: flex-baseline; */
	/* justify-content: center; */
	/* border: 2px solid orange; */
	/* display:inline-block;
    padding-top: 20px; */
	display: flex;
	flex-direction: column;
	align-items: flex-start;
}

.stars i {
	color: #ffc107;
	margin: 0 1px;
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

.img1 {
	display: flex;
	position: fixed;
	bottom: 0;
	height: 250px;
}

.img2 {
	display: flex;
	position: fixed;
	padding: 10px;
	bottom: 9;
	height: 300px;
	margin-left: 1050px;
	margin-bottom: 700px;
}

.img3{
position: fixed;
display: flex;
margin-left: 600px;
margin-top: 300px;
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
		<div class="conav">
			<div class="nav">
				<div class="link">
					 <a href="adminoptions.jsp"><i
					class="bi bi-arrow-left-circle-fill"></i> Back</a> 
				</div>
			</div>
		</div>
<main>
		<img class="img1" alt="My Image" src="<c:url value="/resources/images/pastry-2-br.png" />">
		<img class="img2" alt="My Image" src="<c:url value="/resources/images/cherry-br.png" />">
		<img class="img3" alt="My Image" src="<c:url value="/resources/images/orange-slice2-br.png" />">
		<h1>User Data</h1>
		<div class="container">
			<!--<table cellPadding="20px" border="0">
      <div class="item1">
	    <th>id</th>
   	    <th>Name</th>
        <th>Type</th>
	    <th>Cost</th>
	    <th>Add</th>
	  </div>-->
		<div class="row row-cols-1 row-cols-md-3 g-4">
			<c:forEach var="u" items="${userList }">
				<div class="col">
					<div class="card h-100 skill_card">
						<!-- <img src="/assets/images/skills_logo/CSS.png" alt="${u.getName()}"
							height="50px" width="80px" /> -->
						<div class="card-body">
							<h5 class="card-title"><i class="fa-solid fa-user"></i> ${u.getName()}</h5>
							<h6><i class="fa-solid fa-envelope"></i> ${u.getEmail()}</h6>
							<h6><i class="fa-solid fa-lock"></i> ${u.getPassword()}</h6>
							<p class="card-text">
							<div class="stars">
								<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
									class="bi bi-star-fill"></i><i class="bi bi-star"></i><i
									class="bi bi-star"></i>
							</div>
							</p>
							<div class="modify">
							<a href="userupdate?id=${u.getId() }">update</a><br>
							<a href="userdelete?id=${u.getId() }">delete</a>
							</div>
						</div>
					</div>
				</div>
				<!--<div>
	      <tr class="item2">
		    <td >${p.getId() }</td>
		    <td>${p.getName()}</td>
		    <td>${p.getType()}</td>
		    <td>${p.getCost()}</td>
		    <td><a href="additem?id=${p.getId() }">add</a></td>
	      </tr>
	    </div>-->
			</c:forEach>
			</div>
		</div>
			<!--  </table>-->
	</main>
	<footer>
		<div class="nav2">
			<div class="link2">
				<a href="adminoptions.jsp"><i
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
<!-- <h1>User Data</h1>
<table cellPadding="20px" border="1">
<th>id</th>
<th>Name</th>
<th>Email</th>
<th>Password</th>
<th>Update</th>
<th>Delete</th>

<c:forEach var="u" items="${userList }">
<tr>
<td>${u.getId()}</td>
<td>${u.getName()}</td>
<td>${u.getEmail()}</td>
<td>${u.getPassword()}</td>
<td><a>update</a></td>
<td><a>delete</a></td>
</tr>
</c:forEach>

</table> -->

</body>
</html>