const numberTravellers = document.querySelector("#form-traveller-number")
const buttonUp = document.querySelector("#form-button-increase");
const buttonDown = document.querySelector("#form-button-decrease");
const sunButton = document.querySelector("#warm-weather");
const cloudButton = document.querySelector("#cold-weather");
const questionMarkButton = document.querySelector("#surprise-weather");
const grid1 = document.querySelectorAll(".grid-people-counter .grid-element-sun");
const grid2 = document.querySelectorAll(".grid-people-counter .grid-element-2");
const grid3 = document.querySelectorAll(".grid-people-counter .grid-element-3");
const grid4 = document.querySelectorAll(".grid-people-counter .grid-element-4");
const grid5 = document.querySelectorAll(".grid-people-counter .grid-element-5");
const grid6 = document.querySelectorAll(".grid-people-counter .grid-element-6");

if (numberTravellers != null) {

getNumberTravellers();
setQuestionMark();

console.log(grid1)
console.log(grid2)
console.log(grid3)
console.log(grid4)
console.log(grid5)
console.log(grid6)

buttonUp.addEventListener("click", getNumberTravellers);
buttonDown.addEventListener("click", getNumberTravellers);
sunButton.addEventListener("click", setSun);
cloudButton.addEventListener("click", setCloud);
questionMarkButton.addEventListener("click", setQuestionMark);

function getNumberTravellers() {
if (numberTravellers.value === "1") {
  console.log("1");
  console.log(grid5[0].classList)
  removeTwo();
  removeThree();
  removeGroup();
  grid5[0].classList.add("one-person");
  grid5[1].classList.add("one-person");
  grid5[2].classList.add("one-person");

  console.log(grid5[0].classList)
} else if (numberTravellers.value === "2") {
  removeOne();
  removeThree();
  removeGroup();
  grid4[0].classList.add("two-persons");
  grid4[1].classList.add("two-persons");
  grid4[2].classList.add("two-persons");
  grid6[0].classList.add("two-persons");
  grid6[1].classList.add("two-persons");
  grid6[2].classList.add("two-persons");
  console.log("2");
} else if (numberTravellers.value === "3") {
  console.log("3");
  removeOne();
  removeTwo();
  removeGroup();
  grid4[0].classList.add("three-persons");
  grid4[1].classList.add("three-persons");
  grid4[2].classList.add("three-persons");
  grid5[0].classList.add("three-persons");
  grid5[1].classList.add("three-persons");
  grid5[2].classList.add("three-persons");
  grid6[0].classList.add("three-persons");
  grid6[1].classList.add("three-persons");
  grid6[2].classList.add("three-persons");
} else {
  console.log("group");
  removeOne();
  removeTwo();
  removeThree();
  grid5[0].classList.add("many-persons");
  grid5[1].classList.add("many-persons");
  grid5[2].classList.add("many-persons");
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

function removeOne(){
  grid5[0].classList.remove("one-person");
  grid5[1].classList.remove("one-person");
  grid5[2].classList.remove("one-person");
}

function removeTwo(){
  grid4[0].classList.remove("two-persons");
  grid4[1].classList.remove("two-persons");
  grid4[2].classList.remove("two-persons");
  grid6[0].classList.remove("two-persons");
  grid6[1].classList.remove("two-persons");
  grid6[2].classList.remove("two-persons");
}

function removeThree() {
  grid4[0].classList.remove("three-persons");
  grid4[1].classList.remove("three-persons");
  grid4[2].classList.remove("three-persons");
  grid5[0].classList.remove("three-persons");
  grid5[1].classList.remove("three-persons");
  grid5[2].classList.remove("three-persons");
  grid6[0].classList.remove("three-persons");
  grid6[1].classList.remove("three-persons");
  grid6[2].classList.remove("three-persons");
}

function removeGroup() {
  grid5[0].classList.remove("many-persons");
  grid5[1].classList.remove("many-persons");
  grid5[2].classList.remove("many-persons");
}
