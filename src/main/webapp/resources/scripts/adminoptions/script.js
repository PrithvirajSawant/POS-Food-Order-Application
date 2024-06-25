const btn1 = document.querySelector('.btn1');
const btn2 = document.querySelector('.btn2');
const btn3 = document.querySelector('.btn3');
const btn4 = document.querySelector('.btn4');
const btn5 = document.querySelector('.btn5');

const t1 = document.querySelector('.t-1');
const t2 = document.querySelector('.t-2');
const t3 = document.querySelector('.t-3');
const t4 = document.querySelector('.t-4');
const t5 = document.querySelector('.t-5');

const d1 = document.querySelector('.d-1');
const d2 = document.querySelector('.d-2');
const d3 = document.querySelector('.d-3');
const d4 = document.querySelector('.d-4');
const d5 = document.querySelector('.d-5');

const card1 = document.querySelector('.ch1');
const card2 = document.querySelector('.ch2');
const card3 = document.querySelector('.ch3');
const card4 = document.querySelector('.ch4');
const card5 = document.querySelector('.ch5');

const txt = document.querySelector('.c_text');


[card1, card2, card3, card4, card5].forEach((cards)=>{
    cards.classList.add('ch_hide');
});     


// Function to toggle classes based on scroll direction
function toggleButtonsOnScroll() {
    const scrollableSection = document.querySelector('.scrollable-section');
    const scrollPosition = scrollableSection.scrollTop;
    // const box = document.getElementById('inside');
    const sec1 = document.querySelector('.sec1');
    const sec2 = document.querySelector('.sec2');
    const sec3 = document.querySelector('.sec3');
    const sec4 = document.querySelector('.sec4');
    const sec5 = document.querySelector('.sec5');

    // if (!des_c) {
    //     console.error('Element #des_c nott found');
    //     return;
    // }else{
    //     console.log('Element #des_c found :', des_c);
        
    // }

    // Height of each section
    const sectionHeight = scrollableSection.scrollHeight / 16;

    // Reset all buttons
    [btn1, btn2, btn3, btn4, btn5].forEach((btn) => {
        btn.classList.add('hidden');
        btn.classList.remove('visible');
    });

    [sec1, sec2, sec3, sec4, sec5].forEach((sec) => {
        sec.classList.add('sec_hide');
        sec.classList.remove('sec_visible');
    });

    function ani_left (){
        [t1,t2,t3,t4,t5,d1,d2,d3,d4,d5].forEach((td) => {
            td.style.animation='words 3s ease-in-out 1';
        });
    }

    function ani_right(){
        [t1,t2,t3,t4,t5,d1,d2,d3,d4,d5].forEach((td)=>{
            td.style.animation='op_words 3s ease-in-out 1';
            // td.style.animation = 'none';
        })
    }

    [card1, card2, card3, card4, card5].forEach((cards)=>{
        cards.classList.remove('ch_visible');
        cards.classList.add('ch_hide');
        cards.style.animation='of_spinoff 2s ease-in-out 1';
    });

    

    if (scrollPosition < sectionHeight) {
        // Show button 1
        btn1.classList.remove('hidden');
        btn1.classList.add('visible');

        sec1.classList.remove('sec_hide')
        sec1.classList.add('sec_visible');
        
        ani_left();
        t2.style.animation='op_words 3s ease-in-out 1';
        d2.style.animation='op_words 3s ease-in-out 1';

        // card2.classList.remove('ch_visible');
        // card2.classList.add('ch_hide');
        // card4.style.animation='of_spinoff 2s ease-in-out 1';
        // card1.classList.remove('ch_hide');
        card1.classList.add('ch_visible');
        card1.style.animation='spinoff 2s ease-in-out 1';    
        txt.textContent ="Hello World, I'm ⬇";

    } else if (scrollPosition >= sectionHeight && scrollPosition < 2 * sectionHeight) {
        // Show button 2
        btn2.classList.remove('hidden');
        btn2.classList.add('visible');
        btn3.classList.remove('visible3');

        ani_left();
        t1.style.animation='op_words 3s ease-in-out 1';
        d1.style.animation='op_words 3s ease-in-out 1';
        t3.style.animation='op_words 3s ease-in-out 1';
        d3.style.animation='op_words 3s ease-in-out 1';

        sec2.classList.remove('sec_hide');
        sec2.classList.add('sec_visible');

        // card1.classList.remove('ch_visible');
        // card1.classList.add('ch_hide');
        // card1.style.animation='of_spinoff 2s ease-in-out 1';
        // card2.classList.remove('ch_hide');
        card4.classList.add('ch_visible');
        card4.style.animation='spinoff 2s ease-in-out 1';
        txt.textContent ="Prithviraj Sawant";

    } else if (scrollPosition >= 2 * sectionHeight && scrollPosition < 3 * sectionHeight) {
        // Show button 3
        btn3.classList.remove('hidden');
        btn3.classList.add('visible3');
        btn4.classList.remove('visible4');

        sec3.classList.remove('sec_hide');
        sec3.classList.add('sec_visible');

        ani_left();
        t2.style.animation='op_words 3s ease-in-out 1';
        d2.style.animation='op_words 3s ease-in-out 1';
        t4.style.animation='op_words 3s ease-in-out 1';
        d4.style.animation='op_words 3s ease-in-out 1';

        // card2.style.animation='of_spinoff 2s ease-in-out 1';
        // card2.classList.remove('ch_hide');
        card3.classList.add('ch_visible');
        card3.style.animation='spinoff 2s ease-in-out 1';
        txt.textContent ="Web Developer";
    } else if (scrollPosition >= 3 * sectionHeight && scrollPosition < 4 * sectionHeight) {
        // Show button 4
        btn4.classList.remove('hidden');
        btn4.classList.add('visible');
        btn3.classList.remove('visible3');
        btn4.classList.add('visible4');
        btn5.classList.remove('visible5');

        sec4.classList.remove('sec_hide');
        sec4.classList.add('sec_visible');

        ani_left();
        t3.style.animation='op_words 3s ease-in-out 1';
        d3.style.animation='op_words 3s ease-in-out 1';
        t5.style.animation='op_words 3s ease-in-out 1';
        d5.style.animation='op_words 3s ease-in-out 1';

        // card3.style.animation='of_spinoff 2s ease-in-out 1';
        // card2.classList.remove('ch_hide');
        card2.classList.add('ch_visible');
        card2.style.animation='spinoff 2s ease-in-out 1';
        txt.textContent ="Traditional Artist";
    } else {
        // Show button 5
        btn5.classList.remove('hidden');
        btn5.classList.add('visible');
        btn4.classList.remove('visible4');
        btn5.classList.add('visible5');

        sec5.classList.remove('sec_hide');
        sec5.classList.add('sec_visible');

        ani_left();
        t4.style.animation='op_words 3s ease-in-out 1';
        d4.style.animation='op_words 3s ease-in-out 1';

        // card4.style.animation='of_spinoff 2s ease-in-out 1';
        // card2.classList.remove('ch_hide');
        card5.classList.add('ch_visible');
        card5.style.animation='spinoff 2s ease-in-out 1';
        txt.textContent ="Graphic designer";
    }
}

// Add scroll event listener
document.querySelector('.scrollable-section').addEventListener('scroll', toggleButtonsOnScroll);

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

// CARD BAR
// const txt = document.querySelector('.c_text');

// const textLoad = () =>{
//     setTimeout(() =>{
//         txt.textContent ='Hello World'
//     },0)

//     setTimeout(() =>{
//         txt.textContent ='ijko Planet'
//     },2000)

//     setTimeout(() =>{
//         txt.textContent ='oio Guy'
//     },4000)
// }
// textLoad();
// setInterval(textLoad, 6100)
