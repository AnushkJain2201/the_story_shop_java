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

            <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.0/flowbite.min.css" rel="stylesheet" />

            <link rel="stylesheet"
                href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />

            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
        </head>

        <body class="bg-gray-900 relative">
            <c:if test='${alert.equals("yes")}'>
                <div class="absolute w-screen flex justify-center items-center">
                    <div id="toast-message-cta"
                        class="w-full max-w-xs p-4 text-gray-500 bg-white rounded-lg shadow dark:bg-gray-800 dark:text-gray-400"
                        role="alert">
                        <div class="flex">
                            <!-- <img class="w-8 h-8 rounded-full" src="/docs/images/people/profile-picture-1.jpg"
                                    alt="Jese Leos image" /> -->


                            <c:choose>
                                <c:when test="${user.profilePic == null}">
                                    <img class="w-8 h-8 rounded-full cursor-pointer"
                                        src="static/media/images/signup/user_default.png" alt="Default avatar">
                                </c:when>

                                <c:otherwise>
                                    <img class="w-8 h-8 rounded-full cursor-pointer" src="show_profile_pic.do"
                                        alt="User avatar">
                                </c:otherwise>
                            </c:choose>

                            <div class="ms-3 text-sm font-normal">
                                <span
                                    class="mb-1 text-sm font-semibold text-gray-900 dark:text-white">${user.name}</span>
                                <div class="mb-2 text-sm font-normal">Hi
                                    <c:out value='${user.name.split(" ")[0]}' />, thanks for purchasing
                                    <c:out value="${userPremiumStatus.premium.name}." />
                                </div>
                            </div>
                            <button type="button"
                                class="ms-auto -mx-1.5 -my-1.5 bg-white justify-center items-center flex-shrink-0 text-gray-400 hover:text-gray-900 rounded-lg focus:ring-2 focus:ring-gray-300 p-1.5 hover:bg-gray-100 inline-flex h-8 w-8 dark:text-gray-500 dark:hover:text-white dark:bg-gray-800 dark:hover:bg-gray-700"
                                data-dismiss-target="#toast-message-cta" aria-label="Close">
                                <span class="sr-only">Close</span>
                                <svg class="w-3 h-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                                    viewBox="0 0 14 14">
                                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                        stroke-width="2" d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6" />
                                </svg>
                            </button>
                        </div>
                    </div>

                </div>
            </c:if>

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

            <!-- Book for rent modal -->
            <div id="book-to-add-modal" tabindex="-1" aria-hidden="true"
                class="animate__animated animate__backInUp hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
                <div class="relative p-4 w-full max-w-md max-h-full">
                    <!-- Modal content -->
                    <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
                        <!-- Modal header -->
                        <div
                            class="flex items-center justify-between p-4 md:p-5 border-b rounded-t dark:border-gray-600">
                            <h3 class="text-lg font-semibold text-gray-900 dark:text-white">
                                Add New Book
                            </h3>
                            <button type="button"
                                class="text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ms-auto inline-flex justify-center items-center dark:hover:bg-gray-600 dark:hover:text-white"
                                data-modal-toggle="book-to-add-modal">
                                <svg class="w-3 h-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                                    viewBox="0 0 14 14">
                                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                        stroke-width="2" d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6" />
                                </svg>
                                <span class="sr-only">Close modal</span>
                            </button>
                        </div>
                        <!-- Modal body -->
                        <form class="p-4 md:p-5" action="add_book.do" method="post" enctype="multipart/form-data">
                            <div class="grid gap-4 mb-4 grid-cols-2">
                                <!-- <div class="col-span-2 bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500 text-center">
                                    <label for="book-image"
                                        class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Book Image</label>
                                    <i class="fa-solid fa-square-plus text-center text-3xl"></i>
                                </div> -->
                                <div class="col-span-2">
                                    <!-- <label for="img"
                                        class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Book Image</label>
                                    <input type="file" name="img" id="img"
                                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500" required=""> -->

                                    <div class="flex items-center justify-center w-full">
                                        <label for="dropzone-file"
                                            class="flex flex-col items-center justify-center w-full h-64 border-2 border-gray-300 border-dashed rounded-lg cursor-pointer bg-gray-50 dark:hover:bg-gray-800 dark:bg-gray-700 hover:bg-gray-100 dark:border-gray-600 dark:hover:border-gray-500">
                                            <div class="flex flex-col items-center justify-center pt-5 pb-6">
                                                <svg class="w-8 h-8 mb-4 text-gray-500 dark:text-gray-400"
                                                    aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                                                    viewBox="0 0 20 16">
                                                    <path stroke="currentColor" stroke-linecap="round"
                                                        stroke-linejoin="round" stroke-width="2"
                                                        d="M13 13h3a3 3 0 0 0 0-6h-.025A5.56 5.56 0 0 0 16 6.5 5.5 5.5 0 0 0 5.207 5.021C5.137 5.017 5.071 5 5 5a4 4 0 0 0 0 8h2.167M10 15V6m0 0L8 8m2-2 2 2" />
                                                </svg>
                                                <p class="mb-2 text-sm text-gray-500 dark:text-gray-400"><span
                                                        class="font-semibold">Click to upload</span> or drag and drop
                                                </p>
                                                <p class="text-xs text-gray-500 dark:text-gray-400">SVG, PNG, JPG or GIF
                                                    (MAX. 800x400px)</p>
                                            </div>
                                            <input id="dropzone-file" type="file" name="book-img" class="hidden" />
                                        </label>
                                    </div>

                                </div>
                                <div class="col-span-2">
                                    <label for="title"
                                        class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Title</label>
                                    <input type="text" name="title" id="title"
                                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500"
                                        placeholder="Type book name" required="">
                                </div>
                                <div class="col-span-2 sm:col-span-1">
                                    <label for="price"
                                        class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Price</label>
                                    <input type="number" name="price" id="price"
                                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500"
                                        placeholder="&#8377;200" required="">
                                </div>
                                <div class="col-span-2 sm:col-span-1">
                                    <label for="genre"
                                        class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Genre</label>
                                    <select id="genre"
                                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-500 focus:border-primary-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500"
                                        name="genre">
                                        <option selected="">Select genre</option>
                                        <c:forEach var="genre" items="${genres}">
                                            <option value="${genre.genreId}">
                                                <c:out value="${genre.name}" />
                                            </option>
                                        </c:forEach>
                                    </select>
                                </div>

                                <c:if test="${!user.userType}">
                                    <div class="col-span-2">
                                        <label for="author"
                                            class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Author
                                            Name</label>
                                        <input type="text" name="author" id="author"
                                            class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500"
                                            placeholder="Type author name" required="">
                                    </div>
                                </c:if>

                                <c:if test="${user.userType}">
                                    <div class="col-span-2">
                                        <label for="available-copies"
                                            class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Available
                                            Copies</label>
                                        <input type="number" name="available-copies" id="available-copies"
                                            class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500"
                                            placeholder="500" required="">
                                    </div>
                                </c:if>

                                <c:if test="${user.userType}">
                                    <div class="col-span-2">
                                        <label for="publish-date"
                                            class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Publication
                                            Date</label>
                                        <input type="date" name="publish-date" id="publish-date"
                                            class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500"
                                            required="">
                                    </div>
                                </c:if>

                                <div class="col-span-2">
                                    <label for="description"
                                        class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Book
                                        Description</label>
                                    <textarea id="description" rows="4" name="description"
                                        class="block p-2.5 w-full text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                        placeholder="Write book description here"></textarea>
                                </div>
                            </div>
                            <button type="submit"
                                class="text-white inline-flex items-center bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
                                <svg class="me-1 -ms-1 w-5 h-5" fill="currentColor" viewBox="0 0 20 20"
                                    xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd"
                                        d="M10 5a1 1 0 011 1v3h3a1 1 0 110 2h-3v3a1 1 0 11-2 0v-3H6a1 1 0 110-2h3V6a1 1 0 011-1z"
                                        clip-rule="evenodd"></path>
                                </svg>
                                Add new book
                            </button>
                        </form>
                    </div>
                </div>
            </div>


            <%@ include file="header.jsp" %>

                <main class="bg-gray-900 md:px-24 px-8">
                    <div class="grid grid-cols-1 md:grid-cols-3 gap-4">
                        <!-- Left Section (Profile Section) -->
                        <div class="bg-gray-900 md:h-[100vh] h-auto rounded-2xl">
                            <div
                                class="flex flex-col justify-between items-center space-y-3 border-gray-700 border-b-2 rounded-sm p-4">

                                <!-- Profile Picture -->
                                <a href="#" id="profile_pic">
                                    <c:choose>
                                        <c:when test="${user.profilePic == null}">
                                            <img class="w-32 h-32 md:w-80 md:h-80 rounded-full cursor-pointer"
                                                src="static/media/images/signup/user_default.png" alt="Default avatar">
                                        </c:when>
                                        <c:otherwise>
                                            <img class="w-32 h-32 md:w-80 md:h-80 rounded-full cursor-pointer"
                                                src="show_profile_pic.do" alt="User avatar">
                                        </c:otherwise>
                                    </c:choose>
                                </a>

                                <!-- Upload Profile Picture Form -->
                                <form action="upload_profile.do" method="POST" enctype="multipart/form-data"
                                    class="hidden">
                                    <input type="file" name="dp" id="pic_inp" class="hidden">
                                    <input type="submit" class="hidden" id="inp_btn">
                                </form>

                                <!-- User Info (Name, Email, Country, Phone) -->
                                <c:choose>
                                    <c:when test="${user.userType}">
                                        <h1 class="text-gray-300 text-2xl md:text-3xl font-bold tracking-wider">
                                            <c:out value="${user.name}" />
                                            <span class="material-symbols-outlined">
                                                verified
                                            </span>
                                        </h1>
                                    </c:when>
                                    <c:otherwise>
                                        <h1 class="text-gray-300 text-2xl md:text-3xl font-bold tracking-wider">
                                            <c:out value="${user.name}" />
                                        </h1>
                                    </c:otherwise>
                                </c:choose>

                                <h1 class="text-gray-400 text-lg md:text-xl font-normal tracking-tighter">
                                    <span><i class="fa-solid fa-envelope mr-2"></i></span>${user.email}
                                </h1>

                                <h1 class="text-gray-400 text-lg md:text-xl font-thin tracking-wide">
                                    <span><i class="fa-solid fa-earth-asia mr-2"></i></span>${user.country.name}
                                </h1>

                                <h1 class="text-gray-400 text-lg md:text-xl font-thin tracking-wider">
                                    <span><i class="fa-solid fa-phone mr-2"></i></span>${user.phone}
                                </h1>

                                <c:if test="${user.address != null}">
                                    <h1 class="text-gray-400 text-lg md:text-xl font-thin tracking-wider text-center">
                                        ${user.address}
                                    </h1>
                                </c:if>

                                <!-- User Subscription Info -->
                                <c:choose>
                                    <c:when test="${user.hasPremium}">
                                        <h1 class="text-gray-400 text-lg md:text-xl font-thin tracking-wider">
                                            <c:out value="${userPremiumStatus.premium.name}" />
                                        </h1>
                                    </c:when>
                                    <c:otherwise>
                                        <h1 class="text-gray-400 text-lg md:text-xl font-thin tracking-wider">
                                            <c:out value="No Subscription" />
                                        </h1>
                                    </c:otherwise>
                                </c:choose>

                                <!-- Edit Profile Button -->
                                <button type="button" data-modal-target="edit-modal" data-modal-toggle="edit-modal"
                                    class="text-white bg-gradient-to-r from-cyan-400 via-cyan-500 to-cyan-600 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-cyan-300 dark:focus:ring-cyan-800 font-medium rounded-lg text-sm md:px-16 px-10 py-1 text-center me-2 mb-2">
                                    Edit Profile
                                </button>

                            </div>

                            <!-- Favorite Genre Section (Only for non-premium users) -->
                            <c:if test="${!user.userType}">
                                <div class="flex flex-col justify-around items-center space-y-3 mt-6 px-4">

                                    <c:if test="${!userGenre.isEmpty()}">
                                        <div class="flex flex-wrap justify-around items-center">
                                            <c:forEach var="userFGen" items="${userGenre}">
                                                <span class="p-1 mr-2 mb-2 rounded-lg text-sm bg-cyan-600 text-white">
                                                    ${userFGen.name}
                                                </span>
                                            </c:forEach>
                                        </div>

                                        <button type="button" data-modal-target="edit-genre-modal"
                                            data-modal-toggle="edit-genre-modal"
                                            class="text-white bg-gradient-to-r from-cyan-400 via-cyan-500 to-cyan-600 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-cyan-300 dark:focus:ring-cyan-800 font-medium rounded-lg text-xs px-16 py-1 text-center mb-2 w-[90%]">
                                            Edit Favourite Genre
                                        </button>
                                    </c:if>

                                    <button type="button" data-modal-target="genre-modal"
                                        data-modal-toggle="genre-modal"
                                        class="text-white bg-gradient-to-r from-cyan-400 via-cyan-500 to-cyan-600 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-cyan-300 dark:focus:ring-cyan-800 font-medium rounded-lg text-xs px-16 py-1 text-center mb-2 w-[90%]">
                                        Add Favourite Genre
                                    </button>
                                </div>
                            </c:if>

                            <!-- User Bio Section (For premium users) -->
                            <c:if test="${user.userType}">
                                <div class="flex flex-col justify-around items-center space-y-3 mt-6 px-4">
                                    <c:choose>
                                        <c:when test="${user.bio != null}">
                                            <div
                                                class="w-full bg-cyan-600 rounded-lg h-40 md:h-64 overflow-y-scroll text-wrap overflow-x-hidden">
                                                <p class="text-center p-2 text-white">
                                                    <c:out value="${user.bio}" />
                                                </p>
                                            </div>

                                            <button type="button" data-modal-target="edit-bio-modal"
                                                data-modal-toggle="edit-bio-modal"
                                                class="text-white bg-gradient-to-r from-cyan-400 via-cyan-500 to-cyan-600 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-cyan-300 dark:focus:ring-cyan-800 font-medium rounded-lg text-xs px-16 py-1 text-center mb-2 w-[90%]">
                                                Edit About Yourself
                                            </button>

                                        </c:when>

                                        <c:otherwise>
                                            <button type="button" data-modal-target="bio-modal"
                                                data-modal-toggle="bio-modal"
                                                class="text-white bg-gradient-to-r from-cyan-400 via-cyan-500 to-cyan-600 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-cyan-300 dark:focus:ring-cyan-800 font-medium rounded-lg text-xs px-16 py-1 text-center mb-2 w-[90%]">
                                                Add About Yourself
                                            </button>
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                            </c:if>

                        </div>

                        <!-- Right Section (Books and Notifications Section) -->
                        <div
                            class="bg-gray-900 h-auto col-span-2 border border-gray-700 rounded-2xl pt-5 pr-5 pl-5 pb-3">
                            <div class="flex flex-col h-full space-y-7">

                                <!-- Books Section -->
                                <div
                                    class="h-[650px] md:h-[58%] rounded-lg border border-gray-700 flex flex-col justify-center items-center py-4 md:py-0 ">
                                    <c:choose>
                                        <c:when test="${user.bookAdded > 0}">
                                            <div
                                                class="w-full h-[600px] md:h-[95%] px-2 text-white overflow-y-scroll my-1 rounded-lg ">

                                                <c:forEach var="book" items="${books}">
                                                    <div
                                                        class="w-full h-full my-4 rounded-md bg-gray-800 flex flex-col md:flex-row justify-around gap-1 items-center px-2 md:py-0 py-2">
                                                        <div
                                                            class="w-full md:w-[35%] h-[45%] md:h-[95%] ml-0 md:ml-8 mt-4 md:mt-0 ">
                                                            <img src="show_book_image.do?book-path=${book.bookImg}" alt="hmm"
                                                                class="object-contain w-full h-full">
                                                        </div>
                                                        <div
                                                            class="w-full md:h-[95%] flex-1 p-1 md:p-2 text-center text-wrap md:text-nowrap flex justify-center items-center flex-col gap-2 md:gap-4 overflow-y-scroll">
                                                            <h1
                                                                class="text-3xl md:text-4xl font-sans font-semibold uppercase"><c:out value="${book.title}" /></h1>
                                                            <h1
                                                                class="text-xl md:text-2xl italic font-medium capitalize">
                                                                By <c:out value="${book.author}" /><span></span></h1>

                                                            <div
                                                                class="flex justify-center items-center gap-2 md:gap-16 flex-col md:flex-row w-full">
                                                                <h1 class="text-lg md:text-xl font-thin">&#8377;<c:out value="${book.price}" /></h1>
                                                                <h1 class="capitalize text-lg md:text-xl font-thin">
                                                                    <c:out value="${book.genre.name}" /></h1>
                                                            </div>

                                                            <c:if test="${user.userType}">
                                                                <h1 class="text-lg md:text-xl font-thin">Publication
                                                                    date: <c:out value="${book.publishDate}" /></h1>
                                                                <h1 class="capitalize text-lg md:text-xl font-thin">
                                                                    Available copies: <c:out value="${book.availableCopies}" /></h1>
                                                            </c:if>

                                                            <div class="w-full text-wrap text-xs">
                                                                <c:out value="${book.description}" />
                                                            </div>


                                                        </div>

                                                    </div>
                                                </c:forEach>

                                            </div>
                                        </c:when>
                                        <c:otherwise>
                                            <h1 class="text-2xl md:text-3xl font-bold text-gray-300 mb-5">
                                                <span><i class="fa-solid fa-book mr-5"></i></span>No Books Added !!
                                            </h1>
                                        </c:otherwise>
                                    </c:choose>

                                    <button type="button" data-modal-target="book-to-add-modal"
                                        data-modal-toggle="book-to-add-modal"
                                        class="text-white bg-gradient-to-r from-cyan-400 via-cyan-500 to-cyan-600 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-cyan-300 dark:focus:ring-cyan-800 font-medium rounded-lg text-xs px-10 py-2.5 text-center me-2 mb-2">
                                        Add Book
                                    </button>
                                </div>

                                <!-- Notifications Section -->
                                <div
                                    class="h-[60%] md:h-[38%] rounded-lg border border-gray-700 flex justify-center items-center py-4 md:py-0">
                                    <h1 class="text-2xl md:text-3xl font-bold text-gray-300">
                                        <span><i class="fa-solid fa-circle-exclamation mr-5"></i></span>No Notifications
                                        !!
                                    </h1>
                                </div>
                            </div>
                        </div>
                    </div>





                </main>

                <div class="mt-10">
                    <%@ include file="footer.jsp" %>
                </div>


                <script src="static/js/profile.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.0/flowbite.min.js"></script>
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