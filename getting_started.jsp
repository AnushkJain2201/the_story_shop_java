<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <script src="https://cdn.tailwindcss.com"></script>

        <script src="https://kit.fontawesome.com/921e89acba.js" crossorigin="anonymous"></script>

        <title>The Story Shop - Sign Up</title>

        <link
            href="https://api.fontshare.com/v2/css?f[]=sharpie@400&f[]=tanker@400&f[]=pencerio@50&f[]=stardom@400&display=swap"
            rel="stylesheet" />

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />

        <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.0/flowbite.min.css" rel="stylesheet" />

        <script src="https://www.google.com/recaptcha/api.js" async defer></script>

        <style>
            .headin {
                font-family: "Stardom", sans-serif;
            }
        </style>
    </head>

    <body
        class="flex justify-center items-center min-h-screen bg-[url('static/media/images/signup/bg3.jpg')] bg-cover bg-center flex-col relative">
        <a href="index.do">
            <div class="absolute top-8 left-8 text-3xl text-white cursor-pointer">
                <i class="fa-solid fa-arrow-left"></i>
            </div>
        </a>

        <div
            class="wrapper md:w-[480px] w-full text-text-gray-800 rounded-xl pt-8 pb-8 pr-10 pl-10 h-full bg-indigo-900 bg-clip-padding backdrop-filter backdrop-blur-sm bg-opacity-10 border border-spacing-2 border-gray-800 mt-5 mb-5">
            <form action="getting_started.do?login=false" method="post" onsubmit="return handleSubmit()">
                <div class="input-box w-full h-[80px] my-[10px] mx-0 relative text-[20px] mb-12 ">
                    <h1
                        class="text-[50px] text-center font-bold text-white bg-gray-800 rounded-lg headin animate__animated animate__bounceIn animate__slower">
                        SIGN UP</h1>

                    <c:if test="${captchaUncheckErr != null}">
                        <div
                            class="animate__animated animate__flash animate__infinite animate__slower text-center mt-3">
                            <span
                                class="text-xs mx-6 border py-2 px-1 rounded-md border-red-700 bg-red-400 text-gray-800 block tracking-wider font-bold visible"
                                id="server_err">
                                <c:out value="${captchaUncheckErr}" />
                            </span>
                        </div>
                    </c:if>

                </div>

                <div class="input-box w-full h-[80px] my-[20px] mx-0 relative text-[20px]">
                    <input type="text" placeholder="Full Name" name="fullname"
                        class="w-full h-[70%] bg-transparent border-2 border-gray-800 outline-none rounded-[40px] px-7 py-7 placeholder:text-gray-800 mb-0" />
                    <i class="fa-solid fa-user absolute right-[20px] top-[25%]"></i>
                    <div class="animate__animated animate__flash animate__infinite animate__slower">
                        <span
                            class="text-xs mx-6 border py-1 px-1 rounded-md border-red-700 bg-red-400 text-gray-800 font-medium invisible"
                            id="fullname_err">Please Fill A Full Name
                        </span>
                    </div>
                </div>

                <div class="input-box w-full h-[80px] my-[20px] mx-0 relative text-[20px]">
                    <input type="text" placeholder="Email" name="email"
                        class="w-full h-[70%] bg-transparent border-2 border-gray-800 outline-none rounded-[40px] px-7 py-7 placeholder:text-gray-800 mb-0" />
                    <i class="fa-solid fa-envelope absolute right-[20px] top-[25%]"></i>
                    <div class="animate__animated animate__flash animate__infinite animate__slower">
                        <span
                            class="text-xs mx-6 border py-1 px-1 rounded-md border-red-700 bg-red-400 text-gray-800 font-medium invisible"
                            id="email_err">Please Fill An Email</span>
                    </div>
                </div>

                <div class="input-box w-full h-[80px] my-[20px] mx-0 relative text-[20px]">
                    <input type="password" placeholder="Password" name="password"
                        class="w-full h-[70%] bg-transparent border-2 border-gray-800 outline-none rounded-[40px] px-7 py-7 placeholder:text-gray-800 mb-0" />
                    <i class="fa-solid fa-lock absolute right-[20px] top-[25%]"></i>
                    <div class="animate__animated animate__flash animate__infinite animate__slower">
                        <span
                            class="text-xs mx-6 border py-1 px-1 rounded-md border-red-700 bg-red-400 text-gray-800 font-medium invisible"
                            id="password_err">Please Fill The Password</span>
                    </div>
                </div>

                <div class="input-box w-full h-[80px] my-[15px] mx-0 relative text-[18px]">
                    <select name="country"
                        class="w-full h-[70%] bg-transparent border-2 border-gray-800 outline-none rounded-[40px] px-7">
                        <option value="0">Select Your Country</option>

                        <c:forEach var="country" items="${countries}" varStatus="n">
                            <option value="${n.count}">
                                <c:out value="${country.name}" />
                            </option>
                        </c:forEach>
                    </select>
                    <div class="animate__animated animate__flash animate__infinite animate__slower">
                        <span
                            class="text-xs mx-6 border py-1 px-1 rounded-md border-red-700 bg-red-400 text-gray-800 font-medium invisible"
                            id="country_err">Please Select A Country</span>
                    </div>
                </div>

                <div class="w-full h-[80px] my-[5px] mx-0 relative text-[20px]">
                    <input type="text" placeholder="Phone" name="phone"
                        class="w-full h-[70%] bg-transparent border-2 border-gray-800 outline-none rounded-[40px] px-7 py-7 placeholder:text-gray-800 mb-0" />
                    <i class="fa-solid fa-phone absolute right-[20px] top-[25%]"></i>
                    <div class="animate__animated animate__flash animate__infinite animate__slower">
                        <span
                            class="text-xs mx-6 border py-1 px-1 rounded-md border-red-700 bg-red-400 text-gray-800 font-medium invisible"
                            id="phone_err">Please Fill A Phone Number</span>
                    </div>
                </div>

                <div class="w-full h-[80px] mb-[10px] mx-0 relative text-[20px] flex justify-evenly items-center">
                    <div class="flex items-center px-4 border border-gray-200 rounded dark:border-gray-700">
                        <input checked id="bordered-radio-1" type="radio" value="0" name="is-author"
                            class="w-4 h-4 bg-gray-100 border-gray-300" />
                        <label for="bordered-radio-1" class="w-full py-4 ms-2 text-sm font-medium text-gray-800">
                            Not An Author
                        </label>
                    </div>

                    <div class="flex items-center px-4 border border-gray-200 rounded dark:border-gray-700">
                        <input id="bordered-radio-2" type="radio" value="1" name="is-author"
                            class="w-4 h-4 bg-gray-100 border-gray-300 " />
                        <label for="bordered-radio-2" class="w-full py-4 ms-2 text-sm font-medium text-gray-800">
                            An Author
                        </label>
                    </div>
                </div>

                <div class="w-full h-[80px] my-[5px] mx-0 relative text-[20px] flex justify-center items-center mb-5">
                    <div class="g-recaptcha" data-sitekey="6LeRqjopAAAAAKFeL_Xi-aWMAn8Bcih2wvgwrRWc"></div>
                </div>

                <!-- <div class="input-box w-full h-[80px] my-[20px] mx-0 relative text-[20px]">
                <input type="text" placeholder="Fax No." required class="w-full h-[70%] bg-transparent border-2 border-gray-800 outline-none rounded-[40px] px-7 py-7 placeholder:text-gray-800 mb-0" disabled>
                <i class="fa-solid fa-phone absolute right-[20px] top-[25%]"></i>
                <div class="animate__animated animate__flash animate__infinite animate__slower">
                    <span class="text-xs mx-6 border py-1 px-1 rounded-md border-red-700 bg-red-400 text-gray-800 font-medium">Just Kidding!!</span>
                </div>
            </div> -->

                <!-- <div class="remember-forgot flex justify-between text-[16.5px] m-3">
                <label><input type="checkbox" class="accent-cyan-300 mr-1">Remember me</label>
                <a href="#" class="text-cyan-300 hover:underline">Forgot Password?</a>
            </div> -->

                <button type="submit"
                    class="btn w-full h-11 bg-gray-800 rounded-[40px] shadow-[0 0 10px rgba(0, 0, 0, .1)] cursor-pointer text-[18px] text-white font-semibold headin">
                    Sign Up
                </button>

                <div class="register-link text-[14.5px] text-center mt-5">
                    <p class="text-gray-200">
                        Already have an account?
                        <a href="getting_started.do?login=true" class="text-white font-semibold hover:underline">Login
                            Here</a>
                    </p>
                </div>
            </form>
        </div>

        <script src="static/js/signup.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.0/flowbite.min.js"></script>
    </body>

    </html>