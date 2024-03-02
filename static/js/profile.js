const profilePic = document.querySelector('#profile_pic');
const fileInp = document.getElementById('pic_inp');
const btn = document.getElementById('inp_btn');

const home = document.querySelector('#home');
const premiums = document.querySelector('#premiums');
const explore = document.querySelector('#explore');
const contact = document.querySelector('#contact');
const bioTextarea = document.querySelector('#bio');
const bioBtn = document.querySelector('#bio-btn');

const sendBio = async() => {
    const response = await fetch(`save_bio.do?bio=${bioTextarea.value}`);
    const result = await response.text();

    return result;
}

bioBtn.addEventListener('click', () => {
    sendBio().then((data) => {
        if(data == 'true') {
            window.location.reload();
        }
    })
})

profilePic.addEventListener('click', function(e) {
    e.preventDefault();
    fileInp.click();
});

fileInp.addEventListener('change', (e) => {
    btn.click();
});

home.classList.remove('text-cyan-500');
explore.classList.remove('text-cyan-500');
contact.classList.remove('text-cyan-500');
premiums.classList.remove('text-cyan-500');



