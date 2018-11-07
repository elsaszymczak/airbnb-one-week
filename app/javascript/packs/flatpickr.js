import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css"

console.log('hello')

flatpickr(".datepicker", {
  minDate: "today",
  altFormat: "F j, Y",
  dateFormat: "Y-m-d",
  mode: "range"
});


