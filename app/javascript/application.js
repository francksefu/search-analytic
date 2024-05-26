// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

const name = document.querySelector('#name');

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
