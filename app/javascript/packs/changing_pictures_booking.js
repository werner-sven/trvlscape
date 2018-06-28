const numberTravellers = document.querySelector("#form-traveller-number")
const buttonUp = document.querySelector("#form-button-increase");
const buttonDown = document.querySelector("#form-button-decrease");
const sunButton = document.querySelector("#warm-weather");
const cloudButton = document.querySelector("#cold-weather");
const questionMarkButton = document.querySelector("#surprise-weather");

if (numberTravellers != null) {

getNumberTravellers();
setQuestionMark();

buttonUp.addEventListener("click", getNumberTravellers);
buttonDown.addEventListener("click", getNumberTravellers);
sunButton.addEventListener("click", setSun);
cloudButton.addEventListener("click", setCloud);
questionMarkButton.addEventListener("click", setQuestionMark);

function getNumberTravellers() {
if (numberTravellers.value === "1") {
  console.log("1");
} else if (numberTravellers.value === "2") {
  console.log("2");
} else if (numberTravellers.value === "3") {
  console.log("3");
}
}

function setSun() {
  console.log("sun")
}

function setCloud() {
  console.log("cloud")
}

function setQuestionMark() {
  console.log("?")
}

}
