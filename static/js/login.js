// Getting the form
const form = document.forms[0];

// Getting the error span with respect to their input field
const emailErr = document.querySelector('#email_err');
const passwordErr = document.querySelector('#password_err');


// Getting the input field
let emailField = form["email"];
let passwordField = form["password"];

// Validating the input field value on the blur event
const handleDataValidation = (e) => {
    if(e.target.name === emailField.name) {
        if(emailField.value == ""){
            emailErr.classList.replace('invisible', 'visible');
        }
    }
    else if(e.target.name === passwordField.name) {
        if(passwordField.value == ""){
            passwordErr.classList.replace('invisible', 'visible');
        }
    }
}

// Function for focus event
const handleFocusEvent = (e) => {
    
    if(e.target.name === emailField.name) {
        emailErr.classList.replace('visible', 'invisible');
    }
    else if(e.target.name === passwordField.name) {
        passwordErr.classList.replace('visible', 'invisible');
    }
}

// Adding the blur event listener on each input field
emailField.addEventListener('blur', handleDataValidation);
passwordField.addEventListener('blur', handleDataValidation);

// Adding the focus event listener on each input field
emailField.addEventListener('focus', handleFocusEvent);
passwordField.addEventListener('focus', handleFocusEvent);
