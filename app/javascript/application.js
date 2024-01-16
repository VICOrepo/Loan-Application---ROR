// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

// Add this script to enable dark mode/light mode functionality
document.addEventListener("DOMContentLoaded", function() {
    var darkModeToggle = document.getElementById("darkModeToggle");
  
    darkModeToggle.addEventListener("click", function() {
      document.body.classList.toggle("dark-mode");
  
      // Update button text
      var buttonText = document.body.classList.contains("dark-mode") ? "Light Mode" : "Dark Mode";
      darkModeToggle.innerText = buttonText;
  
      // Save the user's preference in localStorage
      localStorage.setItem("darkMode", document.body.classList.contains("dark-mode"));
    });
  
    // Check user's preference from localStorage and apply dark mode if set
    var isDarkMode = localStorage.getItem("darkMode") === "true";
    if (isDarkMode) {
      darkModeToggle.click();
    }
  });
  