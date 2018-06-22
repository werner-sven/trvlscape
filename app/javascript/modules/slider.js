function slider() {

let slider = document.getElementById("myRange");
const priceSliderValue = document.querySelector(".slider-output");
const hostel = document.querySelector("#button-hostel");
const bnb = document.querySelector("#button-bnb");
const hotel = document.querySelector("#button-hotel");
const luxusHotel = document.querySelector("#button-luxus-hotel");

if (slider === undefined) {return};

// Display the default slider value

// Update the current slider value (each time you drag the slider handle)
slider.oninput = function() {
    priceSliderValue.innerHTML = `Budget per person: ${this.value}`;
    if (this.value < 200) {
      hostel.checked = true;
    } else if (this.value < 300) {
      bnb.checked = true;
    } else if (this.value < 600) {
      hotel.checked = true;
    } else {
      luxusHotel.checked = true;
    };
}

//hostel.onclick = console.log("n");
//bnb.addEventListener("input", console.log("n"));
//hotel.addEventListener("onclick", slider.value = 500);
//luxusHotel.addEventListener("onclick", slider.value = 800);

};

export { slider };


// 200 Hostel 300bnb 600 hotel
