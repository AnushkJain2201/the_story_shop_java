const profilePic = document.querySelector('#profile_pic');
const fileInp = document.getElementById('pic_inp');
const btn = document.getElementById('inp_btn');


profilePic.addEventListener('click', function(e) {
    e.preventDefault();

    console.log('testing');
    
    fileInp.click();
});

fileInp.addEventListener('change', (e) => {
    console.log("Ho riya hai change");
    console.log(e.target.value);

    btn.click();
});



