<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <script src="https://cdn.tailwindcss.com"></script>

        <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>

        <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

        <script src="https://kit.fontawesome.com/921e89acba.js" crossorigin="anonymous"></script>

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
    </head>

    <body class="bg-gray-900">
        <%@ include file="header.jsp" %>

            <main class="bg-gray-900 md:px-24 px-8">
                <div class="grid grid-cols-3 gap-4">
                    <div class="bg-gray-900 h-[100vh] rounded-2xl">
                        <div
                            class="flex justify-between items-center space-y-3 flex-col border-gray-700 border-b-2 rounded-sm">

                            <a href="#" id="profile_pic">
                                <img class="w-96 h-96 rounded-full cursor-pointer"
                                    src="static/media/images/signup/user_default.png" alt="Default avatar">
                            </a>

                            <form action="upload_profile.do" method="POST" enctype="multipart/form-data" class="hidden">
                                <input type="file" name="dp" id="pic_inp" class="hidden">
                                <input type="submit" class="hidden" id="inp_btn">
                            </form>
                            

                            <c:choose>
                                <c:when test="${user.userType}">
                                    <h1 class="text-gray-300 text-3xl font-bold tracking-wider">${user.name}
                                        <span class="material-symbols-outlined">
                                            verified
                                        </span>
                                    </h1>
                                </c:when>

                                <c:otherwise>
                                    <h1 class="text-gray-300 text-3xl font-bold tracking-wider">
                                        ${user.name}
                                    </h1>
                                </c:otherwise>
                            </c:choose>



                            <h1 class="text-gray-400 text-xl font-normal tracking-tighter"><span><i
                                        class="fa-solid fa-envelope mr-2"></i></span>${user.email}</h1>

                            <c:if test="${user.bio != null}">
                                <p class="text-gray-400 text-xl font-thin tracking-wide text-center">${user.bio}</p>
                            </c:if>


                            <div class="flex justify-between items-center w-[55%]">
                                <h1 class="text-gray-400 text-xl font-thin tracking-wide"><span><i
                                            class="fa-solid fa-earth-asia mr-2"></i></span>${user.country.name}</h1>

                                <h1 class="text-gray-400 text-xl font-thin tracking-wider"><span><i
                                            class="fa-solid fa-phone ml-2 mr-2"></i></span>${user.phone}</h1>
                            </div>

                            <c:if test="${user.address != null}">
                                <h1 class="text-gray-400 text-xl font-thin tracking-wider text-center">${user.address}
                                </h1>
                            </c:if>

                            <h1 class="text-gray-400 text-xl font-thin tracking-wider">${user.hasPremium ? "" : "No
                                Subscription"}</h1>

                            <button type="button"
                                class="text-white bg-gradient-to-r from-cyan-400 via-cyan-500 to-cyan-600 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-cyan-300 dark:focus:ring-cyan-800 font-medium rounded-lg text-sm px-16 py-1 text-center me-2 mb-2">
                                Edit Profile
                            </button>

                            <br>
                        </div>

                        <c:if test="${!user.userType}">
                            <div class="flex justify-around items-center space-y-3 mt-6">
                                <button type="button"
                                    class="text-white bg-gradient-to-r from-cyan-400 via-cyan-500 to-cyan-600 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-cyan-300 dark:focus:ring-cyan-800 font-medium rounded-lg text-xs px-16 py-1 text-center me-2 mb-2 w-[48%]">
                                    Add Favourite Genre
                                </button>
                            </div>
                        </c:if>
                    </div>

                    <div
                        class="bg-gray-900 h-[1080px] col-span-2 border border-gray-700 rounded-2xl pt-5 pr-5 pl-5 pb-3">
                        <div class="h-[100%]">
                            <div
                                class="h-[58%] rounded-lg mb-7 border border-gray-700 flex justify-around items-center">
                                <div class="flex justify-around items-center flex-col h-[20%]">
                                    <h1 class="text-3xl font-bold text-gray-300"><span><i class="fa-solid fa-book mr-5"></i></span>No Books Added !!</h1>

                                    <button type="button"
                                        class="text-white bg-gradient-to-r from-cyan-400 via-cyan-500 to-cyan-600 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-cyan-300 dark:focus:ring-cyan-800 font-medium rounded-lg text-xs px-10 py-2.5 text-center me-2 mb-2">
                                        Add Book
                                    </button>
                                </div>
                            </div>
                            <div class="h-[38%] rounded-lg border border-gray-700 flex justify-around items-center">
                                <div class="flex justify-around items-center flex-col h-[20%]">
                                    <h1 class="text-3xl font-bold text-gray-300"><span><i class="fa-solid fa-circle-exclamation mr-5"></i></span>No Notifications !!</h1>
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
    </body>

    </html>