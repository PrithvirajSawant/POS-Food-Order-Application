<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>

<script src="https://kit.fontawesome.com/ed89acff3c.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/preloader.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/adminlogin/style.css' />">
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
		<div class="circle"></div>
		<div class="circle"></div>
		<div class="circle"></div>
		<div class="circle"></div>
		<div class="circle"></div>
		<div class="circle"></div>
		<div class="circle"></div>
		<div class="circle"></div>
		<div class="circle"></div>
		<div class="circle"></div>
		<div class="circle"></div>
		<div class="circle"></div>
		<div class="circle"></div>
		<div class="circle"></div>
		<div class="circle"></div>
		<div class="circle"></div>
		<div class="circle"></div>
		<div class="circle"></div>
		<div class="circle"></div>
		<div class="circle"></div>
	</div>
	<!-- CURSOR 2 -->
	<div class="cursor2"></div>
	<main>

		<div class="container">
			<img class="img2" alt="My Image"
				src="<c:url value="/resources/images/cherry-br.png" />"> <img
				class="img3" alt="My Image"
				src="<c:url value="/resources/images/orange-slice2-br.png" />">
			<!-- <img class="img1" alt="My Image" src="<c:url value="/resources/images/cheesecake.png" />"> 
<img class="img2" alt="My Image" src="<c:url value="/resources/images/cheesecake2.png" />">-->

			<div class="form-box">

				<form action="validate" method="post">
					<!--ring div starts here-->
					<div class="ring">
						<i style="--clr: #ff4f79;"></i> <i style="--clr: #ff9576;"></i> <i
							style="--clr: #ffda72;"></i>
						<div class="login">
							<h2>Admin Login</h2>

							<div class="inputBx input-field if-fill2">
								<input type="text" name="email" placeholder="Email">
							</div>
							<div class="inputBx input-field if-fill2">
								<input type="password" name="password" placeholder="Password">
							</div>

							<div class="inputBx btn-field">
								<input type="submit" id="loginbtn" value="Login in">
							</div>
							<div class="alert" id="loginAlert">${msg}</div>
							<!-- <div class="links">
      <a href="#">Forget Password</a>
      <a href="#">Signup</a>
    </div>  -->
						</div>
					</div>
					<!--ring div ends here-->

				</form>
			</div>
		</div>
	</main>
	<script
		src="<c:url value='https://cdnjs.cloudflare.com/ajax/libs/bodymovin/5.12.2/lottie.min.js' />"></script>
	<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/bodymovin/5.12.2/lottie.min.js"></script> -->
	<script>
		const jsonPath = '<c:url value="/resources/Json/pan.json" />';
	</script>
	<script src="<c:url value='/resources/scripts/adminlogin/main.js' />"></script>


</body>
</html>