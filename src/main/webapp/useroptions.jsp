<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Service Option</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/preloader.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/cursor.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/adduserform/userform.css' />">
	
<style type="text/css">

.form-box{
/*border: 2px solid green;*/
height:70%;
}

.sec{
/*border: 2px solid blue;*/
height:100%;
width:100%;
display: flex;
flex-direction: column;
row-gap:10%;
}

.btn-field{
/*border: 2px solid red;*/
justify-content:center;
align-items: center;
padding: 10%
}

.btn{
display:flex;
justify-content:center;
align-items:center;
padding: 10%;
}

</style>

</head>

<body>
	${msg}

	<!-- PreLoading -->
	<div id="pre_loder">
		<!-- <div class="loader"></div> -->
		<!-- <div class="loader2"></div> -->
		<div id="loader3"></div>
	</div>
	<main>
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

		<div class="circle">
			<img class="img1" alt="Orenge Circle"
				src="<c:url value="/resources/images/adminoptions/orange-1618917_1280.png" />">
			<img class="img2" alt="Red Circle"
				src="<c:url value="/resources/images/adminoptions/red-1618916_1280.png" />">

			<div class="food">
				<img class="img_donut donut-1" id="f-1" alt="donut"
					src="<c:url value="/resources/images/adminoptions/donut1.png" />">
				<img class="img_donut img-pizza" id="f-2" alt="pizza-1"
					src="<c:url value="/resources/images/adminoptions/pizza-1.png" />">
				<img class="img_donut" id="f-3" alt="cake-3"
					src="<c:url value="/resources/images/adminoptions/cake-3.png" />">
				<img class="img_donut" id="f-4" alt="basli"
					src="<c:url value="/resources/images/adminoptions/basli.png" />">
				<img class="img_donut" id="f-5" alt="pizza-3"
					src="<c:url value="/resources/images/adminoptions/pizza-3.png" />">
			</div>
			<!-- <img src="assets/greek-1134971_1280.png" alt=""> -->
		</div>

		<!-- <img class="kiwi" alt="kiwi"
					src="<c:url value="/resources/images/adduserform/kiwi.png" />">-->


		<div class="container">
			<img class="ceiling_light1" alt="ceiling_light1"
				src="<c:url value="/resources/images/adminoptions/Ceiling_Light1.png" />">

			<a href="loginuser.jsp"><button class="back-space">
					<i class="bi bi-arrow-left-circle-fill"></i> Go Back
				</button></a>

			<div class="form-box">
				<img class="ceiling_light3" alt="form-ceiling_light1"
					src="<c:url value="/resources/images/adminoptions/Ceiling_Light3.png" />">
				<h1 id="title">Service Option</h1>
				<section class="sec">

					<div class="btn-field if-fill2">
						<button class="btn" id="btn1">Order Food</button>
					</div>
					<div class="btn-field if-fill2">
						<button class="btn" id="btn2">View FoodOrders</button>
					</div>
					<div class="btn-field if-fill2">
						<button class="btn" id="btn3">View Profile</button>
					</div>

				</section>
			</div>
			<div class="bg_circle">
				<div class="bg_circle2"></div>
			</div>

			<img class="vase" alt="vase-1"
				src="<c:url value="/resources/images/adminoptions/flower_vase2.png" />">
		</div>
	</main>
	<!-- <footer>
		<div class="nav2">
			<div class="link2">
			<a href="adminoptions.jsp"><i
					class="bi bi-arrow-left-circle-fill"></i> Back</a>
			</div>
		</div>
	</footer>  -->
	<!-- BACKGROUND -->
	<script
		src="<c:url value='https://cdnjs.cloudflare.com/ajax/libs/bodymovin/5.12.2/lottie.min.js' />"></script>
	<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/bodymovin/5.12.2/lottie.min.js"></script> -->
	<script>
		const jsonPath = '<c:url value="/resources/Json/pan.json" />';
	</script>
	<script src="<c:url value='/resources/scripts/preloader.js' />"></script>
	<script src="<c:url value='/resources/scripts/cursor.js' />"></script>

	<!-- <main>
<div class="container">
  <h1 class="h1">MVC Food Application</h1>
  <div class="admin-box">
    <h1 id="title">User Option</h1>
      <section>
        
        <div class="btn-field if-fill2">
          <button id="btn1">Order Food</button> 
 		</div>
        <div class="btn-field if-fill2">
          <button  id="btn2">View FoodOrders</button>
 		</div>
        <div class="btn-field if-fill2">
          <button id="btn3">View Profile</button>
 		</div>
 		
      </section>
  </div>
</div>
</main>  
<footer>
		<div class="nav2">
			<div class="link2">
			<a href="loginuser.jsp"><i
					class="bi bi-arrow-left-circle-fill"></i> Back</a>
			</div>
		</div>
	</footer> -->
	<script type="text/javascript">
		document.getElementById("btn1").addEventListener("click",
				function(event) {
					event.preventDefault(); // Prevent default button behavior
					window.location.href = "addfoodorder"; // Redirect to the "adduser" page
				});
		document.getElementById("btn2").addEventListener("click",
				function(event) {
					event.preventDefault(); // Prevent default button behavior
					window.location.href = "viewallfoodorder"; // Redirect to the "adduser" page
				});

		document.getElementById("btn3").addEventListener("click",
				function(event) {
					event.preventDefault(); // Prevent default button behavior
					window.location.href = "viewUserProfile"; // Redirect to the "adduser" page
				});
	</script>
</body>
</html>