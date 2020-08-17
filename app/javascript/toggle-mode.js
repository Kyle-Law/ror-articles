// Dark-Light-Mode Toggle
var toggleSwitch = document.querySelector('input[type="checkbox"]');
var nav = document.getElementById("nav");
var toggleIcon = document.getElementById("toggle-icon");

// Dark Mode Styles
function darkMode() {
  nav.style.backgroundColor = "rgb(0 0 0 / 50%)";
  toggleIcon.children[0].textContent = "Dark Mode";
  toggleIcon.children[1].classList.replace("fa-sun", "fa-moon");
  // imageMode("dark");
}

// Light Mode Styles
function lightMode() {
  nav.style.backgroundColor = "rgb(255 255 255 / 50%)";
  toggleIcon.children[0].textContent = "Light Mode";
  toggleIcon.children[1].classList.replace("fa-moon", "fa-sun");
}

// Switch Theme Dynamically
function switchTheme(event) {
  if (event.target.checked) {
    document.documentElement.setAttribute("data-theme", "dark");
    localStorage.setItem("theme", "dark");
    darkMode();
  } else {
    document.documentElement.setAttribute("data-theme", "light");
    localStorage.setItem("theme", "light");
    lightMode();
  }
}

// Event Listener
toggleSwitch.addEventListener("change", switchTheme);

// Check Local Storage for Theme
var currentTheme = localStorage.getItem("theme");

if (currentTheme) {
  document.documentElement.setAttribute("data-theme", currentTheme);

  if (currentTheme === "dark") {
    toggleSwitch.checked = true;
    darkMode();
  }
}
