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

const buttonArticles = document.querySelector('#button-articles');
const buttonArticlesUser = document.querySelector('#button-articles-user');
const tableArticles =  document.querySelector('#articles');
const tableArticlesUser = document.querySelector('#articles-user');
buttonArticles.addEventListener('click', () => {
  tableArticles.style.display = 'table';
  tableArticlesUser.style.display = 'none';
  buttonArticles.style.textDecoration = 'underline';
  buttonArticlesUser.style.textDecoration = 'none';
});

buttonArticlesUser.addEventListener('click', () => {
  tableArticles.style.display = 'none';
  tableArticlesUser.style.display = 'table';
  buttonArticles.style.textDecoration = 'none';
  buttonArticlesUser.style.textDecoration = 'underline';
});

function takeSearchOfUser(str) {
  if (str.length == 0) { 
    document.getElementById("table-user-articles").innerHTML = "";
    return;
  }
  const xhttp = new XMLHttpRequest();
  xhttp.onload = function() {
    document.getElementById("table-user-articles").innerHTML =
    this.responseText;
  }
  xhttp.open("GET", "/user_ips/"+str);
  xhttp.send();
}

const buttonViews = document.querySelectorAll('.button-view');
const tableUserArticles = document.getElementById('table-user-articles');
const cross = document.getElementById('cross');
for(let i = 0; i < buttonViews.length; i++) {
  buttonViews[i].addEventListener('click', () => {
    tableUserArticles.style.display = 'block';
    takeSearchOfUser(buttonViews[i].id);
    document.getElementById('container').style.filter = 'blur(5px)';
    cross.style.display = 'block';
  })
}

cross.addEventListener('click', () => {
  tableUserArticles.style.display = 'none';
  document.getElementById('container').style.filter = 'blur(0px)';
  cross.style.display = 'none';
})
