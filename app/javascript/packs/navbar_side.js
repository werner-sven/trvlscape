

export default function scrollTab() {
  const navBarSteps = document.querySelectorAll(".nav-side-step")
  const indexnum = document.querySelectorAll("h1");
  const triggerOffset = 150;

  window.addEventListener("scroll", function(){
    for(let i = 0; i < indexnum.length; i += 1) {
      if (checkInView(indexnum[i], 175)) {
        navBarSteps[i].classList.add("active");
        console.log("active")
      } else {
         navBarSteps[i].classList.remove("active");
        console.log("not active")
      }
    }
  }, false);


  function checkInView(element, triggerOffset) {
      const windowHeight = window.innerHeight;
       const elementTopToPageTop = element.getBoundingClientRect().top;
        // const elementTopToPageBottom = elementTopToPageTop - windowHeight;
         if (elementTopToPageTop > 0 && elementTopToPageTop < (windowHeight)
        // && elementTopToPageBottom > triggerOffset
              ) {
          return true
        }
        return false
  }
}



