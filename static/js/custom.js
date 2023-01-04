$(document).ready(function(){
    $('#header-carousel').owlCarousel({
      items : 1,
      loop : true,
      autoplay:true,
      autoplayTimeout:2000,
    });
  })


// head Navbar 
const mobile_nav = document.querySelector(".mobile-navbar-btn");
const nav_header = document.querySelector(".header");
const toggleNavbar = () => {
  nav_header.classList.toggle("active");
};
mobile_nav.addEventListener("click", () => toggleNavbar());


// Word count
function countWord() {
  // Get the input text value
  var words = document.getElementById("word-count").value;
  var w_count = 0, char_count=0;
  var split = words.split(' ');
  //Word count
  for (var i = 0; i < split.length; i++) {
      if (split[i] != "") {
          w_count += 1;
      }
  }
  //character
  for (var i = 0; i < words.length; i++) {
    if (split[i] != "") {
      char_count += 1;
    }
}
  // Display it as output
  document.getElementById("w_count").innerHTML = w_count;
  document.getElementById("char_count").innerHTML = char_count;
}


// Color click to copy
function copyToClipboard(text) {
  const input = document.createElement('input');
  input.style.position = 'fixed';
  input.style.opacity = 0;
  input.value = text;
  document.body.appendChild(input);
  input.select();
  document.execCommand('copy');
  document.body.removeChild(input);
  
  // Set timer
  if(input){
    document.querySelector(".copyText").style.backgroundColor = "green";
   document.querySelector(".copyText").innerText = 'Copy';
   setTimeout(() => {
      document.querySelector(".copyText").innerHTML = "";
      document.querySelector(".copyText").style.backgroundColor = "";
    }, 1000);
  } 
}


// Left sidebar menu
function LeftSideBarOpen(){
  document.getElementById("LeftSideBar").style.width = "319px";
  document.getElementById("LeftSideBar").style.display = "block";
  document.getElementById("close-btn").style.display = "block";
  
}
function LeftSideBarClose(){
  document.getElementById("LeftSideBar").style.display = "none";
  document.getElementById("close-btn").style.display = "none";
}
