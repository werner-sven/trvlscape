import Typed from 'typed.js';

function loadDynamicBannerText() {
  let clickCount = 0;
  const yourName = document.querySelector("#banner-name-input-visible");
  const yourCity = document.querySelector("#banner-city-input-visible");

  if (yourName != null) {

    const typerOne = new Typed(yourName, {
      strings: ["Your name"],
      typeSpeed: 100,
      loop: true
    });
    yourName.addEventListener("focus", stopAndClear);
    console.log(typerOne)


    function stopAndClear() {
      const self = this;
      clickCount++;
      typerOne.stop();
      yourName.innerHTML = "     ";
      //yourName.innerHTML = '       ';

      yourName.addEventListener("blur", stopFirstCursor);

      if (clickCount === 1) {
        yourCity.innerText = "";
        self.typerTwo = new Typed( yourCity, {
          strings: ["Your city"],
          typeSpeed: 100,
          loop: true
        });
      };

      function stopFirstCursor() {
        document.querySelectorAll(".typed-cursor")[0].style.display = "none";
      }

      yourCity.addEventListener("focus", setSecondClicked);


      function setSecondClicked() {
        self.typerTwo.stop();
        yourCity.innerText = "      ";
        yourCity.addEventListener("blur", stopSecondCursor);

        function stopSecondCursor() {
          document.querySelectorAll(".typed-cursor")[1].style.display = "none";
        }
      }
    }
  }
};

export { loadDynamicBannerText };
