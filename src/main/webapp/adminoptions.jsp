<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AdminOption</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/cursor.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/adminoptions/style.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/adminoptions/buttons.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/preloader.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/adminoptions/cahracter_card.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/adminoptions/background.css' />">

</head>
<body>

	<!-- PreLoading -->
	<div id="pre_loder">
		<!-- <div class="loader"></div> -->
		<!-- <div class="loader2"></div> -->
		<div id="loader3"></div>
	</div>

	<!--  <div class="btn-field if-fill2">
          <button id="btn1">Add User</button> 
 		</div>
        <div class="btn-field if-fill2">
          <button  id="btn2">Login User</button>
 		</div>
        <div class="btn-field if-fill2">
          <button id="btn3">Add Product</button>
 		</div>
        <div class="btn-field if-fill2">
          <button id="btn4">View Products</button>
 		</div> 
 		
        <div class="btn-field if-fill2">
          <button id="btn5">View Users</button>
 		</div> -->

	<!-- <img class="bg" src="assets/img/bg-cover3.jpg" alt=""> -->

	<div class="container">
		<div class="scrollable-section">
		
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
			<div class="content">
				<!-- <div class="line">
                <div id="inside"></div>
            </div> -->
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
				<!-- <main id="app"> -->

				<button class="btn1" id="btn1">
					<span class="text"></span>
					<!-- <span class="shimmer"></span> -->
					<div class="c2 c-1">
						<div class="c5">
							<div class="c3">
								<div class="c4 c-f1">
								<div class="alert" id="loginAlert">${message}</div>
								</div>
								<!-- <img class="img3" src="assets/greek-1134971_1280.png" alt=""> -->
							</div>
						</div>
					</div>
				</button>
				<button class="btn2" id="btn2">
					<span class="text"></span>
					<!-- <span class="shimmer"></span> -->
					<img class="btn-fork" alt="donut"
						src="<c:url value="/resources/images/adminoptions/btn-fork-1.png" />">
					<!-- <img class="btn-knife" src="assets/img/btn-fork-5.png" alt=""> -->
					<div class="c2 c-2">
						<div class="b-l"></div>
						<div class="c5 c25">
							<div class="c3 c23">
								<div class="c4 c24 c-f2"></div>
							</div>
						</div>
					</div>
				</button>
				<button class="btn3" id="btn3">
					<span class="text"></span>
					<!-- <span class="shimmer"></span> -->
					<div class="c2 c-3">
						<div class="c5 c35">
							<div class="c3 c33">
								<div class="c4 c34 c-f3">
								<div class="alert" id="loginAlertTwo">${msg}</div>
								</div>
							</div>
						</div>
					</div>
				</button>
				<button class="btn4" id="btn4">
					<span class="text"></span>
					<!-- <span class="shimmer"></span> -->
					<!-- <img class="btn-fork-2" src="assets/img/btn-fork-3.png" alt=""> -->
					<div class="c2 c-4">
						<div class="c5">
							<div class="c3">
								<div class="c4 c-f4"></div>
							</div>
						</div>
					</div>
				</button>
				<button class="btn5" id="btn5">
					<span class="text"></span>
					<!-- <span class="shimmer"></span> -->
					<img class="btn-chop" alt="chopstick"
						src="<c:url value="/resources/images/adminoptions/btn-chopstick.png" />">
					<div class="c2 c-5">
						<div class="c5">
							<div class="c3">
								<div class="c4 c-f5"></div>
							</div>
						</div>
					</div>
				</button>
				<!-- </main> -->
			</div>
		</div>

		<!-- BACKGROUND -->
		<div class=" bg-c">
			<!-- <img class="bg-r-circle" src="assets/img/red-1618916_1280.png" alt=""> -->
			<div class="bg_circle2 bg-c2">
				<div class="bg_circle3 bg-c3">
					<div class="bg_circle3 bg-c4"></div>
				</div>
			</div>
		</div>
		<!-- <img class="fruit1" src="assets/img/kiwi.png" alt=""> -->

	</div>

	<div class="container2">

		<div class="btn-power">
			<div class="btn-p">
				<a href="adminloginform.jsp"><i class="bi bi-power"></i></a>
			</div>
		</div>


		<!-- BACKGROUND -->
		<!-- <div class="bg_circle">
        <div class="bg_circle2"></div>
    </div> -->

		<!-- <div class="line">
        <div id="inside"></div>
    </div> -->
		<img class="ceiling_light1" alt="ceiling_light"
			src="<c:url value="/resources/images/adminoptions/Ceiling_Light1.png" />">
		<!-- <img class="ceiling_light2" src="assets/img/Ceiling_Light2.png" alt=""> -->
		<!-- <img class="ceiling_light3" src="assets/img/Ceiling_Light3.png" alt=""> -->

		<div class="circle1"></div>

		<div class="card_bar">
			<p class="card_text">
				<span class="c_text t-1"></span>
				<!-- <span class="c_text t-2">Planet</span> -->
			</p>
		</div>

		<div class="ch_card ch1" id="ch1">
			<div class="ch_wrapper">
				<img class="user_card" alt="user1"
					src="<c:url value="/resources/images/adminoptions/ch-card-user-2.png" />">
			</div>
			<img class="user_card2" alt="user1.1"
				src="<c:url value="/resources/images/adminoptions/ch-card-user-2.png" />">
		</div>

		<div class="ch_card ch2" id="ch2">
			<div class="ch_wrapper">
				<img class="user_card" alt="update1"
					src="<c:url value="/resources/images/adminoptions/ch-update-3.png" />">
			</div>
			<img class="user_card2" alt="update1.1"
				src="<c:url value="/resources/images/adminoptions/ch-update-3.png" />">
		</div>

		<div class="ch_card ch3" id="ch3">
			<div class="ch_wrapper">
				<img class="user_card" alt="chef1"
					src="<c:url value="/resources/images/adminoptions/chef2.png" />">
			</div>
			<img class="user_card2" alt="chef2"
				src="<c:url value="/resources/images/adminoptions/chef1.png" />">
		</div>

		<div class="ch_card ch4" id="ch4">
			<!-- <div class="ch_wrapper0"> -->
			<div class="ch_wrapper cw4">
				<!-- <div class="plate0"> -->
				<div class="plate4">
					<img class="user_card uc4" alt="pizza1"
						src="<c:url value="/resources/images/adminoptions/pizza1.png" />">
				</div>
				<!-- </div> -->
			</div>
			<img class="user_card2" alt="pizza1"
				src="<c:url value="/resources/images/adminoptions/pizza1.png" />">
			<!-- </div> -->
		</div>

		<div class="ch_card ch5" id="ch5">
			<div class="ch_wrapper">
				<img class="user_card" alt="user4"
					src="<c:url value="/resources/images/adminoptions/ch-card-user-4.1.png" />">
			</div>
			<img class="user_card2" alt="user4"
				src="<c:url value="/resources/images/adminoptions/ch-card-user-4.1.png" />">
		</div>

		<!-- CASE FOR DES -->
		<!-- <div class="case"></div> -->


		<section class=" sec sec1">
			<div class="circle2">
				<div class="title_space">
					<div class="c_title t-1">
						<span>ADD</span> CUSTOMER
					</div>
				</div>
			</div>
			<div class="des">
				<div class="des_col d-1">
					<span class="des_card">Where new connections take their
						place, Adding customers with seamless grace. Here's where
						relationships begin to grow, In every entry, potential starts to
						show.</span>
				</div>
			</div>

		</section>

		<section class=" sec sec2">
			<div class="circle2">
				<div class="title_space">
					<div class="c_title t-2">
						<span>PLACE </span> ORDER
					</div>
				</div>
			</div>
			<div class="des">
				<div class="des_col d-2">
					<span class="des_card ">In my realm, cravings find their
						stage, Where choices dance upon the page. Whisper your desires
						with delight, Here's where you place your order right.</span>
				</div>
			</div>

		</section>

		<section class=" sec sec3">
			<div class="circle2">
				<div class="title_space">
					<div class="c_title t-3">
						<span>ADD</span> PRODUCTS
					</div>
				</div>
			</div>
			<div class="des">
				<div class="des_col d-3">
					<span class="des_card ">Where you expand your selection's
						reach, To enhance your offerings, just within reach. Here's where
						new products find their place, To enrich your store and customer's
						grace.</span>
				</div>
			</div>

		</section>

		<section class=" sec sec4">
			<div class="circle2">
				<div class="title_space">
					<div class="c_title t-4">
						<span>VIEW</span> PRODUCTS
					</div>
				</div>
			</div>
			<div class="des">
				<div class="des_col d-4">
					<span class="des_card ">Where the catalog's canvas unfolds
						wide, View, update, delete with ease beside. Here, your products'
						narrative takes flight, In your hands, their story stays bright.</span>
				</div>
			</div>

		</section>

		<section class=" sec sec5">
			<div class="circle2">
				<div class="title_space">
					<div class="c_title t-5">
						<span>VIEW</span> CUSTOMERS
					</div>
				</div>
			</div>
			<div class="des">
				<div class="des_col d-5">
					<span class="des_card "> Peering into profiles, details
						unfold clear, Update or delete, choices appear. Here’s where trust
						and service align, In managing relationships, every time.</span>
				</div>
			</div>

		</section>

		<!-- BACKGROUND -->
		<div class="bg_circle">
			<div class="bg_circle2"></div>
		</div>

		<img class="vase" alt="vase-1"
			src="<c:url value="/resources/images/adminoptions/flower_vase3.png" />">


	</div>


	<!--  <footer>
		<div class="nav2">
			<div class="link2">
			<a href="adminloginform.jsp"><i
					class="bi bi-arrow-left-circle-fill"></i> Back</a>
			</div>
		</div>
	</footer>  -->
	<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/bodymovin/5.12.2/lottie.min.js"></script> -->
	<script
		src="<c:url value='https://cdnjs.cloudflare.com/ajax/libs/bodymovin/5.12.2/lottie.min.js' />"></script>
	<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/bodymovin/5.12.2/lottie.min.js"></script> -->
	<script>
		const jsonPath = '<c:url value="/resources/Json/pan.json" />';
	</script>
	<script src="<c:url value='/resources/scripts/cursor.js' />"></script>
	<script
		src="<c:url value='/resources/scripts/adminoptions/buttons.js' />"></script>
	<script
		src="<c:url value='/resources/scripts/adminoptions/script.js' />"></script>
	<script type="text/javascript">
		//Add this JavaScript code to handle the display of the alert after login failure
		document.addEventListener("DOMContentLoaded", function() {
			var loginAlert = document.getElementById("loginAlert");
			if (loginAlert.textContent.trim() !== "") {
				// If the alert message is not empty, display the alert
				loginAlert.style.display = "block";
			}
			loginAlert.addEventListener("click", function() {
				// Hide the alert when it is clicked
				loginAlert.style.display = "none";
			});
			
			var loginAlertTwo = document.getElementById("loginAlertTwo");
			if (loginAlertTwo.textContent.trim() !== "") {
				// If the alert message is not empty, display the alert
				loginAlertTwo.style.display = "block";
			}
			loginAlertTwo.addEventListener("click", function() {
				// Hide the alert when it is clicked
				loginAlertTwo.style.display = "none";
			});
		});
	</script>  
	<!-- <h1>AdminOption</h1>
<a href="adduser">Add user</a>
<a href="loginuser.jsp">Login user</a>
<a href="addProduct">Add Product</a>
<a href="viewAllProducts">View Products</a>
<a href="viewAllUsers">View Users</a> -->
</body>
</html>