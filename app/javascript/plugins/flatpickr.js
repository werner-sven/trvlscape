import flatpickr from "flatpickr"
import 'flatpickr/dist/themes/material_orange.css' // Note this is important!

const orangePicker = document.getElementById('orange-picker');

if (orangePicker) {
  flatpickr(".datepicker", {
    altInput: true,
    minDate: "today",
    appendTo: orangePicker
  });
}

flatpickr(".birthpickr", {
  altInput: true,
});

flatpickr(".passportpickr", {
  altInput: true,
  minDate: "today",
});
