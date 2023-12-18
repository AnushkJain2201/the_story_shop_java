// Getting the form
const form = document.forms[0];

// Getting the error span with respect to their input field
const fullnameErr = document.querySelector('#fullname_err');
const emailErr = document.querySelector('#email_err');
const passwordErr = document.querySelector('#password_err');
const countryErr = document.querySelector('#country_err');
const phoneErr = document.querySelector('#phone_err');

// Getting the input field
let fullNameField = form["fullname"];
let emailField = form["email"];
let passwordField = form["password"];
let counrtyField = form["country"];
let phoneField = form["phone"];

// Validating the input field value on the blur event
const handleDataValidation = (e) => {
    if(e.target.name === fullNameField.name) {
        if(fullNameField.value == ""){
            fullnameErr.classList.replace('invisible', 'visible');
        }
    }
    else if(e.target.name === emailField.name) {
        if(emailField.value == ""){
            emailErr.classList.replace('invisible', 'visible');
        }
    }
    else if(e.target.name === passwordField.name) {
        if(passwordField.value == ""){
            passwordErr.classList.replace('invisible', 'visible');
        }
    }
    else if(e.target.name === counrtyField.name) {
        if(counrtyField.value == 0) {
            countryErr.classList.replace('invisible', 'visible');
        }
    }
    if(e.target.name === phoneField.name) {
        if(phoneField.value == 0) {
            phoneErr.classList.replace('invisible', 'visible');
        }
    }
}

// Function for focus event
const handleFocusEvent = (e) => {
    console.log("Andar hu");
    if(e.target.name === fullNameField.name) {
        fullnameErr.classList.replace('visible', 'invisible');  
    }
    else if(e.target.name === emailField.name) {
        emailErr.classList.replace('visible', 'invisible');
    }
    else if(e.target.name === passwordField.name) {
        passwordErr.classList.replace('visible', 'invisible');
    }
    else if(e.target.name === counrtyField.name) {
        countryErr.classList.replace('visible', 'invisible');
    }
    if(e.target.name === phoneField.name) {
        phoneErr.classList.replace('visible', 'invisible');
    }
}

// Adding the blur event listener on each input field
fullNameField.addEventListener('blur', handleDataValidation);
emailField.addEventListener('blur', handleDataValidation);
passwordField.addEventListener('blur', handleDataValidation);
counrtyField.addEventListener('blur', handleDataValidation);
phoneField.addEventListener('blur', handleDataValidation);

// Adding the focus event listener on each input field
fullNameField.addEventListener('focus', handleFocusEvent);
emailField.addEventListener('focus', handleFocusEvent);
passwordField.addEventListener('focus', handleFocusEvent);
counrtyField.addEventListener('focus', handleFocusEvent);
phoneField.addEventListener('focus', handleFocusEvent);
