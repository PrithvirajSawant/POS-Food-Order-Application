const cords= {x:0, y:0};
const circles = document.querySelectorAll(".cr_circle");

const cursor = document.querySelector(".cursor");

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