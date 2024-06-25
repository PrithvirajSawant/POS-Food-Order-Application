/**
 * 
 */
// window pre_Loader
const preloader = document.getElementById("pre_loder");

window.addEventListener("load",function(){
    preloader.style.display="none";
})

// json preloader
const animation = lottie.loadAnimation({
    container: document.getElementById('loader3'),
    // renderer: 'svg',
    // loop: true,
    // autoplay: true,
    path: jsonPath
    //path : '"<c:url value="/resources/Json/pan.json " />"'
});

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
		});
		
		
		// CURSOR
		const cords= {x:0, y:0};
const circles = document.querySelectorAll(".circle");

const cursor = document.querySelector(".cursor");

const loginSection = document.querySelector('.login');

const colors = [ "#ffb56b","#f89d63", "#ef865e", "#e36e5c", "#d5585c", "#c5415d", "#b22c5e", "#9c155f", "#830060", "#680060", "#48005f", "#1f005c"];

circles.forEach(function(circle, index){
                circle.x=0;
                circle.y=0;
  circle.style.backgroundColor = colors[index % colors.length]
                });
window.addEventListener("mousemove",function(e){
                        // console.log(e.clientX, e.clientY);
                        cords.x = e.clientX;
                        cords.y = e.clientY;
  // console.log(cords)
  
                        });

function animateCircles(){
  let x = cords.x;
  let y = cords.y;
  
  circles.forEach(function(circle, index){
    circle.style.left = x - 12 + "px";
    circle.style.top = y - 12 + "px";
    
    circle.style.scale = (circles.length - index) / circles.length;
    circle.x = x;
    circle.y = y;
    
    const nextCircle = circles[index + 1] || circles[0]
    x += (nextCircle.x - x) * 0.3;
    y += (nextCircle.y - y) * 0.3;
  });
  
  requestAnimationFrame(animateCircles);
}
animateCircles();