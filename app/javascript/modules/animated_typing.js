import Typed from 'typed.js';

function loadDynamicBannerText() {
  const yourName = document.querySelector("#banner-name-input-visible");
  const fuckThis = document.querySelector("#fuckthis");
  const fuckThisToo = document.querySelector("#fuck-this-too");
  const yourCity = document.querySelector("#banner-city-input-visible");

  if (yourName != null) {

    window.setTimeout(fadeValueProposition, 3000);

    window.setTimeout(()=>{}, 1000)

    const typerOne = new Typed(yourName, {
      strings: ["Your name"],
      typeSpeed: 100,
      loop: true
    });
    yourName.addEventListener("focus", stopAndClear);


    function stopAndClear() {
      yourName.removeEventListener("focus", stopAndClear);
      typerOne.stop();
      yourName.remove();
      fuckthis.hidden = false;
      fuckthis.focus();
      document.querySelector(".typed-cursor").remove();

      yourName.addEventListener("blur", stopFirstCursor);
      yourCity.innerText = "";

      self.typerTwo = new Typed( yourCity, {
        strings: ["Your city"],
        typeSpeed: 100,
        loop: true
      });

      yourCity.addEventListener("focus", setSecondClicked);

      function stopFirstCursor() {
        document.querySelectorAll(".typed-cursor")[0].style.display = "none";
      }


      function setSecondClicked() {
        yourCity.removeEventListener("focus", setSecondClicked);
        self.typerTwo.stop();
        yourCity.remove();
        fuckThisToo.hidden = false;
        fuckThisToo.focus();
        document.querySelector(".typed-cursor").remove();


        function stopSecondCursor() {
          document.querySelectorAll(".typed-cursor")[1].style.display = "none";
        }
      }
    }
  }
};

function fadeValueProposition(){
  document.querySelector(".loading-overlay").remove();
  //.hidden = true;
};


export { loadDynamicBannerText };
