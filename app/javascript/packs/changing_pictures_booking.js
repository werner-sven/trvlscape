const numberTravellers = document.querySelector("#form-traveller-number")
const buttonUp = document.querySelector("#form-button-increase");
const buttonDown = document.querySelector("#form-button-decrease");

buttonUp.addEventListener("click", getNumberTravellers);
buttonDown.addEventListener("click", getNumberTravellers);


function getNumberTravellers() {
if (numberTravellers.value === "1") {
  console.log("1");
} else if (numberTravellers.value === "2") {
  console.log("2");
} else if (numberTravellers.value === "3") {
  console.log("3");
}
}

function getTravellersAndClimate() {
if (numberTravellers.value === "1") {

} else if (numberTravellers.value === "2") {
  console.log("2");
} else if (numberTravellers.value === "3") {
  console.log("3");
}
}
