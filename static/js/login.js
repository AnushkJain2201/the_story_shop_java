// Getting the form
const recoveryForm = document.forms[0];
const OTPForm = document.forms[1];
const newPasswordForm = document.forms[2];
const form = document.forms[3];

// For password recovery
const sendOTPBtn = document.querySelector("#send_otp_btn");
const verifyOTPBtn = document.querySelector("#verify_OTP_btn");
const setPasswordBtn = document.querySelector('#set_new_password_btn');

const successMsg = document.querySelector("#success_msg");
const errorToast = document.querySelector(".error_toast");
const errorToastMsg = document.querySelector(".error_toast_msg");
const modalHeading = document.querySelector(".modal_heading");

let recEmailField = recoveryForm["email"];

// For OTP
const code1 = OTPForm["code-1"];
const code2 = OTPForm["code-2"];
const code3 = OTPForm["code-3"];
const code4 = OTPForm["code-4"];
const code5 = OTPForm["code-5"];
const code6 = OTPForm["code-6"];

// For new password
const newPasswordField = newPasswordForm["password"];

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

// Sending email with OTP for password reset
const sendPasswordRecovery = async (email) => {
    let response = await fetch(`password_recovery.do?email=${email}`);
    let result = await response.text();

    return result;
}

const handlePasswordRecovery = () => {
    sendPasswordRecovery(recEmailField.value).then((data) => {
        if(data == 'true') {
            recoveryForm.classList.add('hidden');
            OTPForm.classList.remove('hidden');
            modalHeading.innerText = "Enter The OTP";
        } else {
            errorToast.classList.replace('hidden', "flex");
            errorToastMsg.innerText = "Please enter a registered email."
            recEmailField.value = "";
        }
    }) .catch((err) => {
        console.log(err);
    })

    return true;
}

sendOTPBtn.addEventListener('click', handlePasswordRecovery);

// Verifying OTP for password reset
const sendVerifyOTP = async (code1, code2, code3, code4, code5, code6) => {
    let response = await fetch(`verify_reset_password_OTP.do?code1=${code1}&code2=${code2}&code3=${code3}&code4=${code4}&code5=${code5}&code6=${code6}`);
    let result = await response.text();

    return result;
}

const handleVerifyOTP = () => {
    sendVerifyOTP(code1.value, code2.value, code3.value, code4.value, code5.value, code6.value).then((data) => {
        if(data == 'true') {
            OTPForm.classList.add('hidden');
            newPasswordForm.classList.remove('hidden');
            modalHeading.innerText = "Enter New Password"
        } else {
            errorToast.classList.replace('hidden', 'flex');
            errorToastMsg.innerText = "The OTP is wrong."
        }
        
    }).catch((err) => {
        console.log(err);
    })
}

verifyOTPBtn.addEventListener('click', handleVerifyOTP);

// Saving the new password
const setNewPassword = async (newPassword) => {
    let response = await fetch(`set_new_password.do?new_password=${newPassword}`);
    let result = response.text();

    return result;
}

const handleSetPassword = () => {
    setNewPassword(newPasswordField.value).then((data) => {
        if(data == 'true') {
            newPasswordForm.classList.add("hidden");
            successMsg.classList.remove("hidden");
        }
        
    }).catch((err) => {
        console.log(err);
    })
}

setPasswordBtn.addEventListener('click', handleSetPassword);

function focusNextInput(el, prevId, nextId) {
    if (el.value.length === 0) {
        document.getElementById(prevId).focus();
    } else {
        document.getElementById(nextId).focus();
    }
}

