document.getElementById("registerForm").addEventListener("submit", function(e) {
  e.preventDefault();

  let password = document.getElementById("password").value;
  let confirm = document.getElementById("confirmPassword").value;
  let terms = document.getElementById("terms").checked;
  let message = document.getElementById("message");

  if (!terms) {
    message.textContent = "Please accept terms";
    return;
  }

  if (password !== confirm) {
    message.textContent = "Passwords do not match";
    return;
  }

  message.style.color = "green";
  message.textContent = "Registration Successful!";
});