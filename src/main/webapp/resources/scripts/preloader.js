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