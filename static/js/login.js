// Getting the form
const recoveryForm = document.forms[0];
const form = document.forms[1];

// For password recovery
const sendOTPBtn = document.querySelector("#send_otp_btn");
let recEmailField = recoveryForm["email"];

// Getting the error span with respect to their input field
const emailErr = document.querySelector('#email_err');
const passwordErr = document.querySelector('#password_err');

let flag1 = true;
let flag2 = true;

// Getting the input field
let emailField = form["email"];
let passwordField = form["password"];

// Regex Pattern
let emailPattern = /^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/;

const checkEmailExist = async(enteredEmail) => {
    let response = await fetch(`check_duplicate_email.do?enteredEmail=${enteredEmail}`);
    let result = await response.text();

    return result;

}

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
        } else if(!emailPattern.test(emailField.value)) {
            emailErr.innerText = "Please Enter A Proper Email!";
            emailErr.classList.replace('invisible', 'visible');
            flag1 = false;
        } else {
            checkEmailExist(emailField.value).then((data) => {
                if(data == 'false') {
                    emailErr.innerText = "Account With This Email Don't Exist!";
                    emailErr.classList.replace('invisible', 'visible');
                    flag1 = false;
                }
            })
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
        emailErr.innerText = "Please Fill An Email"
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


// Forget Password Scenario 
const sendPasswordRecovery = async (email) => {
    let response = await fetch(`password_recovery.do?email=${email}`);
    let result = await response.text();

    return result;
}

const handlePasswordRecovery = () => {
    sendPasswordRecovery(recEmailField.value).then((data) => {
        console.log(data);
    }) .catch((err) => {
        console.log(err);
    })

    return true;
}

sendOTPBtn.addEventListener('click', handlePasswordRecovery);


