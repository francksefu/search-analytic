// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

const name = document.querySelector('#name');
const nameArea = document.querySelector('#name_area');
const arrayOfName = nameArea.innerHTML.split('::');
console.log(arrayOfName[1]);
let timeOut = 0;
name.addEventListener('keyup', () => {
  myStopFunction();
 timeOut = setTimeout(() => {
  console.log('submit')
  document.forms[0].submit();
},4000);
  
})

function myStopFunction() {
  clearTimeout(timeOut);
}
