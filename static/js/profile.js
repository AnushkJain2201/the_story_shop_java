const editGenreForm = document.forms[4];
const editGenreBtn = document.querySelector("#edit-genre_btn");

const profilePic = document.querySelector('#profile_pic');
const fileInp = document.getElementById('pic_inp');
const btn = document.getElementById('inp_btn');

const home = document.querySelector('#home');
const premiums = document.querySelector('#premiums');
const explore = document.querySelector('#explore');
const contact = document.querySelector('#contact');

const bioTextarea = document.querySelector('#bio');
const bioBtn = document.querySelector('#bio-btn');

const editBioTextarea = document.querySelector('#edit-bio');
const editBioBtn = document.querySelector('#edit-bio-btn');

const sendBio = async () => {
    const response = await fetch(`save_bio.do?bio=${bioTextarea.value}`);
    const result = await response.text();

    return result;
}

const editBio = async () => {
    console.log(editBioTextarea.value);
    const response = await fetch(`edit_bio.do?bio=${editBioTextarea.value}`);
    const result = await response.text();

    return result;
}


bioBtn.addEventListener('click', () => {
    sendBio().then((data) => {
        if (data == 'true') {
            window.location.reload();
        }
    })
})

editBioBtn.addEventListener('click', () => {
    editBio().then((data) => {
        if (data == 'true') {
            window.location.reload();
        }
    })
})

profilePic.addEventListener('click', function (e) {
    e.preventDefault();
    fileInp.click();
});

fileInp.addEventListener('change', (e) => {
    btn.click();
});

let arr1 = [];

editGenreBtn.addEventListener('click', async () => {
    Array.from(editGenreForm.elements).forEach((input) => {
        if (input.checked)
            arr1.push(input.value);

    });
    let query = arr1.join('&genre=');

    query = '?genre=' + query;
    console.log(query);

    const resp = await fetch('edit_genre.do' + query);

    const result = await resp.text();

    console.log(result);

    if (result == 'true') {
        document.querySelectorAll('input[type=checkbox]').forEach(el => el.checked = false);
        window.location.reload();
    }

});

home.classList.remove('text-cyan-500');
explore.classList.remove('text-cyan-500');
contact.classList.remove('text-cyan-500');
premiums.classList.remove('text-cyan-500');



