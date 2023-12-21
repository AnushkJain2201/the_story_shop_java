// Getting the form
const form = document.forms[0];

// Getting the error span with respect to their input field
const emailErr = document.querySelector('#email_err');
const passwordErr = document.querySelector('#password_err');

let flag1 = true;
let flag2 = true;

// Getting the input field
let emailField = form["email"];
let passwordField = form["password"];

const handleSubmit = () => {
    let flagFinal = true;
    
    if(emailField.value == "") {
        emailErr.classList.replace('invisible', 'visible');
        flagFinal = false;
    } else if (passwordField.value == "") {
        passwordErr.classList.replace('invisible', 'visible');
        flagFinal = false;
    }

    let flagFinal2 = flag1 && flag2;
    return flagFinal && flagFinal2;
}

// Validating the input field value on the blur event
const handleDataValidation = (e) => {
    if(e.target.name === emailField.name) {
        if(emailField.value == ""){
            emailErr.classList.replace('invisible', 'visible');
            flag1 = false;
        }
    }
    else if(e.target.name === passwordField.name) {
        if(passwordField.value == ""){
            passwordErr.classList.replace('invisible', 'visible');
            flag2 = false;
            
        }
    }
}

// Function for focus event
const handleFocusEvent = (e) => {
    
    if(e.target.name === emailField.name) {
        emailErr.classList.replace('visible', 'invisible');
        flag1 = true;
    }
    else if(e.target.name === passwordField.name) {
        passwordErr.classList.replace('visible', 'invisible');
        flag2 = true;
    }
}

// Adding the blur event listener on each input field
emailField.addEventListener('blur', handleDataValidation);
passwordField.addEventListener('blur', handleDataValidation);

// Adding the focus event listener on each input field
emailField.addEventListener('focus', handleFocusEvent);
passwordField.addEventListener('focus', handleFocusEvent);
