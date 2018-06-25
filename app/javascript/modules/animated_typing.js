import Typed from 'typed.js';

let firstClicked = false;

function loadDynamicBannerText() {

const yourName = document.querySelector("#banner-name-input-visible");
const yourCity = document.querySelector("#banner-city-input-visible");

if (yourName != null) {
  yourName.addEventListener("focus", set_first_clicked);

  const typerOne = new Typed(yourName, {
    strings: ["Your name"],
    typeSpeed: 100,
    loop: true
  });


  function set_first_clicked() {
    typerOne.loop = false;
    document.querySelectorAll(".typed-cursor")[0].style.display = "none";
    const typerTwo = new Typed( yourCity, {
      strings: ["Your city"],
      typeSpeed: 100,
      loop: true
    });

    yourCity.addEventListener("focus", set_second_clicked);

  function set_second_clicked() {
    console.log(typerTwo.showCursor)
    document.querySelectorAll(".typed-cursor")[1].style.display = "none";
    typerTwo.loop = false;
    console.log(typerTwo.showCursor)
  }

  }


}};

export { loadDynamicBannerText };
