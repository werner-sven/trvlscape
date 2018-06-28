function slider() {

let slider = document.getElementById("myRange");
const priceSliderValue = document.querySelector(".slider-output");
const hostel = document.querySelector("#button-hostel");
const bnb = document.querySelector("#button-bnb");
const hotel = document.querySelector("#button-hotel");
const luxusHotel = document.querySelector("#button-luxus-hotel");

//if (slider === undefined) {return};

// Display the default slider value
if (slider != null) {
// Update the current slider value (each time you drag the slider handle)
slider.oninput = function() {
    priceSliderValue.innerHTML = `Budget per person: €${this.value}`;
    if (this.value < 200) {
      hostel.checked = true;
      hotel.checked = false;
      bnb.checked = false;
      luxusHotel.checked = false;
    } else if (this.value < 300) {
      bnb.checked = true;
      hotel.checked = false;
      hostel.checked = false;
      luxusHotel.checked = false;
    } else if (this.value < 600) {
      hotel.checked = true;
      bnb.checked = false;
      hostel.checked = false;
      luxusHotel.checked = false;
    } else if (this.value > 600) {
      luxusHotel.checked = true;
      hotel.checked = false;
      bnb.checked = false;
      hostel.checked = false;
    }
    }}

//hostel.onclick = console.log("n");
//bnb.addEventListener("input", console.log("n"));
//hotel.addEventListener("onclick", slider.value = 500);
//luxusHotel.addEventListener("onclick", slider.value = 800);

};

export { slider };


// 200 Hostel 300bnb 600 hotel


// function checkInView(item, index) {
//   const windowHeight = window.innerHeight;
//   const elementTopToPageTop = item.getBoundingClientRect().top;
//     // const elementTopToPageBottom = elementTopToPageTop - windowHeight;

//      if (elementTopToPageTop > triggerOffset && elementTopToPageTop < (windowHeight - triggerOffset)
//     // && elementTopToPageBottom > triggerOffset
//           ) {
//       navBarSteps[index].classList.add("active");
//     return true;
//     }
//     navBarSteps[index].classList.remove("active");
//     return false;
// }

// document.addEventListener("scroll", function(){
//   indexnum.forEach(checkInView);
//   }
// );
