// Add this script in a file named scripts.js
document.addEventListener("DOMContentLoaded", function () {
    const loginForm = document.getElementById("loginForm");
    const logoutButton = document.getElementById("logoutButton");

    loginForm.addEventListener("submit", function (event) {
        event.preventDefault();
        const username = document.getElementById("username").value;
        // Perform login logic (you might want to add AJAX for a real system)
        alert(`Welcome, ${username}!`);
    });

    logoutButton.addEventListener("click", function () {
        // Perform logout logic
        alert("Logged out successfully!");
    });
});
