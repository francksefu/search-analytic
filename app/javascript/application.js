// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

const name = document.querySelector('#name');
let timeOut = 0;
name.addEventListener('keyup', () => {
  myStopFunction();
 timeOut = setTimeout(() => console.log(name.value), 4000);
})

function myStopFunction() {
  clearTimeout(timeOut);
}
