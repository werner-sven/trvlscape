export default function scrollTab() {

  const bookingNewPageID = document.querySelector(".nav-side-step")
  if (bookingNewPageID != null){
    const navBarSteps = document.querySelectorAll(".nav-side-step")
    const indexnum = document.querySelectorAll("h1");
    const offSet = 200

    window.addEventListener("scroll", function(){
      for(let i = 0; i < indexnum.length; i += 1) {
        if (checkInView(indexnum[i], offSet)) {
          navBarSteps[i].classList.add("active");
        } else {
         navBarSteps[i].classList.remove("active");
       }
     }
   }, false);

    function checkInView(element, offSet) {
      const windowHeight = window.innerHeight;
      const elementTopToPageTop = element.getBoundingClientRect().top;
      if (elementTopToPageTop > - offSet && elementTopToPageTop < (windowHeight - offSet)) {
        return true
      }
      return false
    }
  }
}



