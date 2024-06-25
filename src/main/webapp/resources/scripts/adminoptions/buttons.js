/**
 * 
 */
const buttons = [
		  document.getElementById("btn1"),
		  document.getElementById("btn2"),
		  document.getElementById("btn3"),
		  document.getElementById("btn4"),
		  document.getElementById("btn5")
	  ];
	  
	  const redirectUrls = [
		  "adduser",
		  "loginuser.jsp",
		  "addProduct",
		  "viewAllProducts",
		  "viewAllUsers"
	  ];
	  
	  buttons.forEach((button,index)=>{
		button.addEventListener("click",(event)=>{
			event.preventDefault();
			window.location.href = redirectUrls[index];
		}); 
	  });