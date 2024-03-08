<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="a" uri="tss" %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />

            <script src="https://cdn.tailwindcss.com"></script>

            <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>

            <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

            <script src="https://kit.fontawesome.com/921e89acba.js" crossorigin="anonymous"></script>

            <link rel="stylesheet" href="static/css/profile.css">

            <link
                href="https://api.fontshare.com/v2/css?f[]=sharpie@400&f[]=tanker@400&f[]=pencerio@50&f[]=stardom@400&display=swap"
                rel="stylesheet" />

            <!-- Script for the typewriter effect  -->
            <script src="https://unpkg.com/typed.js@2.1.0/dist/typed.umd.js"></script>

            <style>
                .headin h1 {
                    font-family: "Tanker", sans-serif;
                }
            </style>

            <title>The Story Shop - Profile</title>

            <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.1/flowbite.min.css" rel="stylesheet" />

            <link rel="stylesheet"
                href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />

            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
        </head>

        <body class="bg-gray-900">
            <!-- Edit modal -->
            <div id="edit-modal" tabindex="-1" aria-hidden="true"
                class="animate__animated animate__backInUp hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
                <div class="relative p-4 w-full max-w-md max-h-full">
                    <!-- Modal content -->
                    <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
                        <!-- Modal header -->
                        <div
                            class="flex items-center justify-between p-4 md:p-5 border-b rounded-t dark:border-gray-600">
                            <h3 class="text-lg font-semibold text-gray-900 dark:text-white">
                                Edit Profile
                            </h3>
                            <button type="button"
                                class="text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ms-auto inline-flex justify-center items-center dark:hover:bg-gray-600 dark:hover:text-white"
                                data-modal-toggle="edit-modal">
                                <svg class="w-3 h-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                                    viewBox="0 0 14 14">
                                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                        stroke-width="2" d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6" />
                                </svg>
                                <span class="sr-only">Close modal</span>
                            </button>
                        </div>
                        <!-- Modal body -->
                        <form class="p-4 md:p-5" action="edit_profile.do" method="post">
                            <div class="grid gap-4 mb-4 grid-cols-2">
                                <div class="col-span-2">
                                    <label for="name"
                                        class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Name</label>
                                    <input type="text" name="name" id="name"
                                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500"
                                        value='<c:out value="${user.name}" />'>
                                </div>

                                <div class="col-span-2">
                                    <label for="email"
                                        class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Registered
                                        Email</label>
                                    <input type="text" name="email" id="email"
                                        class="bg-gray-600 border border-gray-300 text-gray-300 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500"
                                        value='<c:out value="${user.email}" />' disabled>
                                </div>

                                <div class="col-span-2 sm:col-span-2">
                                    <label for="phone"
                                        class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Phone
                                        Number</label>
                                    <input type="text" name="phone" id="phone"
                                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500"
                                        value='<c:out value="${user.phone}" />' required="">
                                </div>

                                <!-- <div class="col-span-2">
                                <label for="bio"
                                    class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Bio</label>
                                <textarea id="bio" name="bio" rows="4"
                                    class="block p-2.5 w-full text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                    placeholder="About You" value="${user.bio}"></textarea>
                            </div> -->

                            </div>
                            <button type="submit"
                                class="text-white inline-flex items-center bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
                                <i class="fa-solid fa-pen-to-square mr-3"></i>
                                Edit Profile
                            </button>
                        </form>
                    </div>
                </div>
            </div>

            <!-- Genre Modal -->
            <div id="genre-modal" tabindex="-1" aria-hidden="true"
                class="animate__animated animate__backInUp hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
                <div class="relative p-4 w-full max-w-md max-h-full">
                    <!-- Modal content -->
                    <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
                        <!-- Modal header -->
                        <div
                            class="flex items-center justify-between p-4 md:p-5 border-b rounded-t dark:border-gray-600">
                            <h3 class="text-lg font-semibold text-gray-900 dark:text-white">
                                Add Your Favourite Genre
                            </h3>
                            <button type="button"
                                class="text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ms-auto inline-flex justify-center items-center dark:hover:bg-gray-600 dark:hover:text-white close-btn-b"
                                data-modal-toggle="genre-modal">
                                <svg class="w-3 h-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                                    viewBox="0 0 14 14">
                                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                        stroke-width="2" d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6" />
                                </svg>
                                <span class="sr-only">Close modal</span>
                            </button>
                        </div>
                        <!-- Modal body -->
                        <form class="p-4 md:p-5" method="get">
                            <div class="grid gap-4 mb-4 grid-cols-2">
                                <div class="col-span-2">
                                    <div class="flex justify-around items-center flex-wrap" id="allGenre">

                                        <c:forEach var="genre" items="${a:compare(genres, userGenre)}">
                                            <div
                                                class="flex items-center ps-4 border border-gray-200 rounded dark:border-gray-700">

                                                <input id='<c:out value="${genre.genreId}" />' type="checkbox" value='
                                                <c:out value="${genre.genreId}" />' name="bordered-checkbox" class="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 rounded
                                                focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800
                                                focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
                                                <label for='<c:out value="${genre.genreId}" />'
                                                    class="w-full py-4 ms-2 text-sm font-medium text-gray-900 dark:text-gray-300">
                                                    <c:out value="${genre.name}" />
                                                </label>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                            <button type="button"
                                class="text-white inline-flex items-center bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
                                id="genre_btn">
                                <i class="fa-solid fa-pen-to-square mr-3"></i>
                                Add Genre
                            </button>
                        </form>
                    </div>
                </div>
            </div>

            <!-- Bio Modal -->
            <div id="bio-modal" tabindex="-1" aria-hidden="true"
                class="animate__animated animate__backInUp hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
                <div class="relative p-4 w-full max-w-md max-h-full">
                    <!-- Modal content -->
                    <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
                        <!-- Modal header -->
                        <div
                            class="flex items-center justify-between p-4 md:p-5 border-b rounded-t dark:border-gray-600">
                            <h3 class="text-lg font-semibold text-gray-900 dark:text-white">
                                Add About Yourself
                            </h3>
                            <button type="button"
                                class="text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ms-auto inline-flex justify-center items-center dark:hover:bg-gray-600 dark:hover:text-white close-btn-b"
                                data-modal-toggle="bio-modal">
                                <svg class="w-3 h-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                                    viewBox="0 0 14 14">
                                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                        stroke-width="2" d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6" />
                                </svg>
                                <span class="sr-only">Close modal</span>
                            </button>
                        </div>
                        <!-- Modal body -->
                        <!-- <div class="m-1"> -->

                        <form>
                            <div
                                class="w-full mb-4 border border-gray-200 rounded-lg bg-gray-50 dark:bg-gray-700 dark:border-gray-600 px-1 py-1">
                                <div class="px-4 py-2 bg-white rounded-t-lg dark:bg-gray-800">
                                    <label for="bio" class="sr-only">Your comment</label>
                                    <textarea id="bio" rows="4"
                                        class="w-full px-0 text-sm text-gray-900 bg-white border-0 dark:bg-gray-800 focus:ring-0 dark:text-white dark:placeholder-gray-400"
                                        placeholder="Write about yourself..." required /></textarea>
                                </div>
                                <div class="flex items-center justify-between px-3 py-2 border-t dark:border-gray-600">
                                    <button type="button"
                                        class="inline-flex items-center py-2.5 px-4 text-xs font-medium text-center text-white bg-blue-700 rounded-lg focus:ring-4 focus:ring-blue-200 dark:focus:ring-blue-900 hover:bg-blue-800"
                                        id="bio-btn">
                                        Add
                                    </button>

                                </div>
                            </div>
                        </form>
                        <!-- </div> -->
                    </div>
                </div>
            </div>

            <!-- Edit Bio Modal -->
            <div id="edit-bio-modal" tabindex="-1" aria-hidden="true"
                class="animate__animated animate__backInUp hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
                <div class="relative p-4 w-full max-w-md max-h-full">
                    <!-- Modal content -->
                    <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
                        <!-- Modal header -->
                        <div
                            class="flex items-center justify-between p-4 md:p-5 border-b rounded-t dark:border-gray-600">
                            <h3 class="text-lg font-semibold text-gray-900 dark:text-white">
                                Edit About Yourself
                            </h3>
                            <button type="button"
                                class="text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ms-auto inline-flex justify-center items-center dark:hover:bg-gray-600 dark:hover:text-white close-btn-b"
                                data-modal-toggle="edit-bio-modal">
                                <svg class="w-3 h-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                                    viewBox="0 0 14 14">
                                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                        stroke-width="2" d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6" />
                                </svg>
                                <span class="sr-only">Close modal</span>
                            </button>
                        </div>
                        <!-- Modal body -->
                        <!-- <div class="m-1"> -->

                        <form>
                            <div
                                class="w-full mb-4 border border-gray-200 rounded-lg bg-gray-50 dark:bg-gray-700 dark:border-gray-600 px-1 py-1">
                                <div class="px-4 py-2 bg-white rounded-t-lg dark:bg-gray-800">
                                    <!-- <label for="bio" class="sr-only">Your comment</label> -->
                                    <textarea id="edit-bio" rows="15"
                                        class="w-full px-0 text-sm text-gray-900 bg-white border-0 dark:bg-gray-800 focus:ring-0 dark:text-white dark:placeholder-gray-400"
                                        required />
                                    <c:out value="${user.bio}" /></textarea>
                                </div>
                                <div class="flex items-center justify-between px-3 py-2 border-t dark:border-gray-600">
                                    <button type="submit"
                                        class="inline-flex items-center py-2.5 px-4 text-xs font-medium text-center text-white bg-blue-700 rounded-lg focus:ring-4 focus:ring-blue-200 dark:focus:ring-blue-900 hover:bg-blue-800"
                                        id="edit-bio-btn">
                                        Edit
                                    </button>

                                </div>
                            </div>
                        </form>
                        <!-- </div> -->
                    </div>
                </div>
            </div>

            <!-- Edit Genre Modal -->
            <div id="edit-genre-modal" tabindex="-1" aria-hidden="true"
                class="animate__animated animate__backInUp hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
                <div class="relative p-4 w-full max-w-md max-h-full">
                    <!-- Modal content -->
                    <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
                        <!-- Modal header -->
                        <div
                            class="flex items-center justify-between p-4 md:p-5 border-b rounded-t dark:border-gray-600">
                            <h3 class="text-lg font-semibold text-gray-900 dark:text-white">
                                Edit Your Favourite Genre
                            </h3>
                            <button type="button"
                                class="text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ms-auto inline-flex justify-center items-center dark:hover:bg-gray-600 dark:hover:text-white close-btn-b"
                                data-modal-toggle="edit-genre-modal">
                                <svg class="w-3 h-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                                    viewBox="0 0 14 14">
                                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                        stroke-width="2" d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6" />
                                </svg>
                                <span class="sr-only">Close modal</span>
                            </button>
                        </div>
                        <!-- Modal body -->
                        <form class="p-4 md:p-5" method="get">
                            <div class="grid gap-4 mb-4 grid-cols-2">
                                <div class="col-span-2">
                                    <div class="flex justify-around items-center flex-wrap" id="allGenre">

                                        <c:forEach var="genreF" items="${userGenre}">
                                            <div
                                                class="flex items-center ps-4 border border-gray-200 rounded dark:border-gray-700">

                                                <input id='<c:out value="${genreF.genreId}" />' type="checkbox" value='
                                                <c:out value="${genreF.genreId}" />' name="bordered-checkbox" class="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 rounded
                                                focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800
                                                focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
                                                <label for='<c:out value="${genreF.genreId}" />'
                                                    class="w-full py-4 ms-2 text-sm font-medium text-gray-900 dark:text-gray-300">
                                                    <c:out value="${genreF.name}" />
                                                </label>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                            <button type="button"
                                class="text-white inline-flex items-center bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
                                id="edit-genre_btn">
                                <i class="fa-solid fa-pen-to-square mr-3"></i>
                                Edit
                            </button>
                        </form>
                    </div>
                </div>
            </div>

            <%@ include file="header.jsp" %>

                <main class="bg-gray-900 md:px-24 px-8">
                    <div class="grid grid-cols-3 gap-4">
                        <div class="bg-gray-900 h-[100vh] rounded-2xl">
                            <div
                                class="flex justify-between items-center space-y-3 flex-col border-gray-700 border-b-2 rounded-sm">

                                <a href="#" id="profile_pic">
                                    <c:choose>
                                        <c:when test="${user.profilePic == null}">
                                            <img class="w-80 h-w-80 rounded-full cursor-pointer"
                                                src="static/media/images/signup/user_default.png" alt="Default avatar">
                                        </c:when>

                                        <c:otherwise>
                                            <img class="w-80 h-w-80 rounded-full cursor-pointer"
                                                src="show_profile_pic.do" alt="User avatar">
                                        </c:otherwise>
                                    </c:choose>


                                </a>

                                <form action="upload_profile.do" method="POST" enctype="multipart/form-data"
                                    class="hidden">
                                    <input type="file" name="dp" id="pic_inp" class="hidden">
                                    <input type="submit" class="hidden" id="inp_btn">
                                </form>


                                <c:choose>
                                    <c:when test="${user.userType}">
                                        <h1 class="text-gray-300 text-3xl font-bold tracking-wider">
                                            <c:out value="${user.name}" />

                                            <span class="material-symbols-outlined">
                                                verified
                                            </span>
                                        </h1>
                                    </c:when>

                                    <c:otherwise>
                                        <h1 class="text-gray-300 text-3xl font-bold tracking-wider">
                                            <c:out value="${user.name}" />
                                        </h1>
                                    </c:otherwise>
                                </c:choose>



                                <h1 class="text-gray-400 text-xl font-normal tracking-tighter"><span><i
                                            class="fa-solid fa-envelope mr-2"></i></span>${user.email}</h1>

                                <!-- <c:if test="${user.bio != null}">
                                <p
                                    class="text-gray-400 text-xl font-thin tracking-wide text-center text-wrap max-h-5 mb-52">
                                    <span><i class="fa-solid fa-pen-nib text-gray-400 mr-3"></i></span>${user.bio}
                                </p>
                            </c:if> -->

                                <h1 class="text-gray-400 text-xl font-thin tracking-wide"><span><i
                                            class="fa-solid fa-earth-asia mr-2"></i></span>${user.country.name}</h1>

                                <h1 class="text-gray-400 text-xl font-thin tracking-wider"><span><i
                                            class="fa-solid fa-phone mr-2 "></i></span>${user.phone}</h1>

                                <c:if test="${user.address != null}">
                                    <h1 class="text-gray-400 text-xl font-thin tracking-wider text-center">
                                        ${user.address}
                                    </h1>
                                </c:if>

                                <h1 class="text-gray-400 text-xl font-thin tracking-wider">${user.hasPremium ? "" : "No
                                    Subscription"}</h1>

                                <button type="button" data-modal-target="edit-modal" data-modal-toggle="edit-modal"
                                    class="text-white bg-gradient-to-r from-cyan-400 via-cyan-500 to-cyan-600 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-cyan-300 dark:focus:ring-cyan-800 font-medium rounded-lg text-sm px-16 py-1 text-center me-2 mb-2">
                                    Edit Profile
                                </button>

                                <br>
                            </div>

                            <c:if test="${!user.userType}">
                                <div class="flex justify-around items-center flex-col space-y-3 mt-6">

                                    <c:if test="${!userGenre.isEmpty()}">
                                        <div class="flex justify-around items-center flex-wrap">
                                            <c:forEach var="userFGen" items="${userGenre}">
                                                <span
                                                    class="p-1 mr-2 mb-2 rounded-lg text-sm bg-cyan-600 text-white">${userFGen.name}</span>
                                            </c:forEach>
                                        </div>

                                        <button type="button" data-modal-target="edit-genre-modal"
                                            data-modal-toggle="edit-genre-modal"
                                            class="text-white bg-gradient-to-r from-cyan-400 via-cyan-500 to-cyan-600 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-cyan-300 dark:focus:ring-cyan-800 font-medium rounded-lg text-xs px-16 py-1 text-center me-2 mb-2 w-[48%]">
                                            Edit Favourite Genre
                                        </button>
                                    </c:if>


                                    <button type="button" data-modal-target="genre-modal"
                                        data-modal-toggle="genre-modal"
                                        class="text-white bg-gradient-to-r from-cyan-400 via-cyan-500 to-cyan-600 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-cyan-300 dark:focus:ring-cyan-800 font-medium rounded-lg text-xs px-16 py-1 text-center me-2 mb-2 w-[48%]">
                                        Add Favourite Genre
                                    </button>
                                </div>
                            </c:if>

                            <c:if test="${user.userType}">
                                <div class="flex justify-around items-center flex-col space-y-3 mt-6">
                                    <c:choose>
                                        <c:when test="${user.bio != null}">
                                            <div
                                                class="w-full bg-cyan-600 rounded-lg scroll-smooth h-64 overflow-y-scroll text-wrap overflow-x-hidden">
                                                <p class="text-center p-2 text-white">
                                                    <c:out value="${user.bio}" />
                                                </p>
                                            </div>

                                            <button type="button" data-modal-target="edit-bio-modal"
                                                data-modal-toggle="edit-bio-modal"
                                                class="text-white bg-gradient-to-r from-cyan-400 via-cyan-500 to-cyan-600 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-cyan-300 dark:focus:ring-cyan-800 font-medium rounded-lg text-xs px-16 py-1 text-center me-2 mb-2 w-[48%]">
                                                Edit About Yourself
                                            </button>

                                        </c:when>

                                        <c:otherwise>
                                            <button type="button" data-modal-target="bio-modal"
                                                data-modal-toggle="bio-modal"
                                                class="text-white bg-gradient-to-r from-cyan-400 via-cyan-500 to-cyan-600 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-cyan-300 dark:focus:ring-cyan-800 font-medium rounded-lg text-xs px-16 py-1 text-center me-2 mb-2 w-[48%]">
                                                Add About Yourself
                                            </button>
                                        </c:otherwise>
                                    </c:choose>


                                </div>
                            </c:if>


                        </div>

                        <div
                            class="bg-gray-900 h-[1080px] col-span-2 border border-gray-700 rounded-2xl pt-5 pr-5 pl-5 pb-3">
                            <div class="h-[100%]">
                                <div
                                    class="h-[58%] rounded-lg mb-7 border border-gray-700 flex justify-around items-center">
                                    <div class="flex justify-around items-center flex-col h-[20%]">
                                        <h1 class="text-3xl font-bold text-gray-300"><span><i
                                                    class="fa-solid fa-book mr-5"></i></span>No Books Added !!</h1>

                                        <button type="button"
                                            class="text-white bg-gradient-to-r from-cyan-400 via-cyan-500 to-cyan-600 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-cyan-300 dark:focus:ring-cyan-800 font-medium rounded-lg text-xs px-10 py-2.5 text-center me-2 mb-2">
                                            Add Book
                                        </button>
                                    </div>
                                </div>
                                <div class="h-[38%] rounded-lg border border-gray-700 flex justify-around items-center">
                                    <div class="flex justify-around items-center flex-col h-[20%]">
                                        <h1 class="text-3xl font-bold text-gray-300"><span><i
                                                    class="fa-solid fa-circle-exclamation mr-5"></i></span>No
                                            Notifications
                                            !!</h1>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                </main>

                <div class="mt-10">
                    <%@ include file="footer.jsp" %>
                </div>


                <script src="static/js/profile.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.1/flowbite.min.js"></script>
                <script>
                    const form = document.forms[1];
                    const genreBtn = document.querySelector('#genre_btn');
                    const closeBtn = document.querySelector('.close-btn-b');

                    let arr = [];

                    genreBtn.addEventListener('click', async () => {
                        Array.from(form.elements).forEach((input) => {
                            if (input.checked)
                                arr.push(input.value);

                        });
                        let query = arr.join('&genre=');

                        query = '?genre=' + query;
                        console.log(query);

                        const resp = await fetch('save_genre.do' + query);

                        const result = await resp.text();

                        console.log(result);

                        if (result == 'true') {
                            closeBtn.click();
                            document.querySelectorAll('input[type=checkbox]').forEach(el => el.checked = false);
                            window.location.reload();
                        }

                    });
                </script>
        </body>

        </html>