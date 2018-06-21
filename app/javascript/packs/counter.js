
const valueInput = document.getElementById('form-traveller-number');



if (valueInput != null) {



  const buttonUp = document.querySelector("#form-button-increase");
  const buttonDown = document.querySelector("#form-button-decrease");

  console.log(buttonUp);
  console.log(buttonDown);
  console.log(valueInput);


  buttonUp.addEventListener("click", increaseValue);
  buttonDown.addEventListener("click", decreaseValue);

};


function increaseValue() {
let value = valueInput.value;

  value = isNaN(value) ? 0 : value;
  value++;
  valueInput.value = value;
}

function decreaseValue() {
let value = valueInput.value;

  value = isNaN(value) ? 0 : value;
  value < 1 ? value = 1 : '';
  value--;
  valueInput.value = value;
}
