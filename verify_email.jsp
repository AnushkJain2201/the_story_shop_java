<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Document</title>

        <script src="https://cdn.tailwindcss.com"></script>

        <script src="https://kit.fontawesome.com/921e89acba.js" crossorigin="anonymous"></script>

        <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.0/flowbite.min.css" rel="stylesheet" />
    </head>

    <body>
        <div class="flex justify-center items-center h-[100vh] bg-gray-900">
            <section
                class="bg-white dark:bg-gray-900 bg-[url('https://flowbite.s3.amazonaws.com/docs/jumbotron/hero-pattern.svg')] dark:bg-[url('https://flowbite.s3.amazonaws.com/docs/jumbotron/hero-pattern-dark.svg')]">
                <div class="py-8 px-4 mx-auto max-w-screen-xl text-center lg:py-16 z-10 relative">
                    <p class="inline-flex justify-between items-center py-1 px-1 pe-4 mb-7 text-sm text-blue-700 bg-blue-100 rounded-full dark:bg-blue-900 dark:text-blue-300 hover:bg-blue-200 dark:hover:bg-blue-800"
                        id="err_para">
                        <span class="text-xs bg-blue-600 rounded-full text-white px-4 py-1.5 me-3"
                            id="span_sm">Hello!</span>
                        <span class="text-sm font-medium" id="span_lg">To proceed further, you must verify your
                            Email</span>
                    </p>
                    <h1
                        class="mb-7 text-4xl font-extrabold tracking-tight leading-none text-gray-900 md:text-5xl lg:text-6xl dark:text-white">
                        Welcome To The Story Shop
                    </h1>
                    <p class="mb-5 text-lg font-normal text-gray-500 lg:text-xl sm:px-16 lg:px-48 dark:text-gray-200">
                        To complete your account verification process, we have sent a 6-digit One-Time Password (OTP) to
                        the email address associated with your account. Please check your inbox and provide the OTP in
                        the designated field to ensure the security and integrity of your account.
                    </p>



                    <c:if test="${emailVerErr != null}">
                        <button type="button"
                            class="text-white bg-gradient-to-r from-green-500 via-green-600 to-green-700 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-green-300 dark:focus:ring-green-800 shadow-lg shadow-green-500/50 dark:shadow-lg dark:shadow-green-800/80 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-5"
                            id="resend_btn">
                            <!-- <div class="text-center">
                            <div role="status">
                                <svg aria-hidden="true" class="inline w-5 h-5 text-gray-200 animate-spin dark:text-gray-600 fill-orange-600" viewBox="0 0 100 101" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M100 50.5908C100 78.2051 77.6142 100.591 50 100.591C22.3858 100.591 0 78.2051 0 50.5908C0 22.9766 22.3858 0.59082 50 0.59082C77.6142 0.59082 100 22.9766 100 50.5908ZM9.08144 50.5908C9.08144 73.1895 27.4013 91.5094 50 91.5094C72.5987 91.5094 90.9186 73.1895 90.9186 50.5908C90.9186 27.9921 72.5987 9.67226 50 9.67226C27.4013 9.67226 9.08144 27.9921 9.08144 50.5908Z" fill="currentColor"/>
                                    <path d="M93.9676 39.0409C96.393 38.4038 97.8624 35.9116 97.0079 33.5539C95.2932 28.8227 92.871 24.3692 89.8167 20.348C85.8452 15.1192 80.8826 10.7238 75.2124 7.41289C69.5422 4.10194 63.2754 1.94025 56.7698 1.05124C51.7666 0.367541 46.6976 0.446843 41.7345 1.27873C39.2613 1.69328 37.813 4.19778 38.4501 6.62326C39.0873 9.04874 41.5694 10.4717 44.0505 10.1071C47.8511 9.54855 51.7191 9.52689 55.5402 10.0491C60.8642 10.7766 65.9928 12.5457 70.6331 15.2552C75.2735 17.9648 79.3347 21.5619 82.5849 25.841C84.9175 28.9121 86.7997 32.2913 88.1811 35.8758C89.083 38.2158 91.5421 39.6781 93.9676 39.0409Z" fill="currentFill"/>
                                </svg>
                                <span class="sr-only">Loading...</span>
                            </div>
                        </div> -->
                            <i class="fa-solid fa-arrows-rotate"></i> Resend OTP
                        </button>
                    </c:if>

                    <form action="verify_email.do" class="flex justify-center items-center flex-col">
                        <div class="flex mb-2 space-x-2 ">
                            <div>
                                <label for="code-1" class="sr-only">First code</label>
                                <input type="text" maxlength="1" onkeyup="focusNextInput(this, 'code-1', 'code-2')"
                                    name="code-1" id="code-1"
                                    class="block w-16 h-16 py-3 text-sm font-extrabold text-center text-gray-900 bg-white border border-gray-300 rounded-lg focus:ring-primary-500 focus:border-primary-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500"
                                    required>
                            </div>
                            <div>
                                <label for="code-2" class="sr-only">Second code</label>
                                <input type="text" maxlength="1" onkeyup="focusNextInput(this, 'code-1', 'code-3')"
                                    name="code-2" id="code-2"
                                    class="block w-16 h-16 py-3 text-sm font-extrabold text-center text-gray-900 bg-white border border-gray-300 rounded-lg focus:ring-primary-500 focus:border-primary-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500"
                                    required>
                            </div>
                            <div>
                                <label for="code-3" class="sr-only">Third code</label>
                                <input type="text" maxlength="1" onkeyup="focusNextInput(this, 'code-2', 'code-4')"
                                    name="code-3" id="code-3"
                                    class="block w-16 h-16 py-3 text-sm font-extrabold text-center text-gray-900 bg-white border border-gray-300 rounded-lg focus:ring-primary-500 focus:border-primary-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500"
                                    required>
                            </div>
                            <div>
                                <label for="code-4" class="sr-only">Fourth code</label>
                                <input type="text" maxlength="1" onkeyup="focusNextInput(this, 'code-3', 'code-5')"
                                    name="code-4" id="code-4"
                                    class="block w-16 h-16 py-3 text-sm font-extrabold text-center text-gray-900 bg-white border border-gray-300 rounded-lg focus:ring-primary-500 focus:border-primary-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500"
                                    required>
                            </div>
                            <div>
                                <label for="code-5" class="sr-only">Fivth code</label>
                                <input type="text" maxlength="1" onkeyup="focusNextInput(this, 'code-4', 'code-6')"
                                    name="code-5" id="code-5"
                                    class="block w-16 h-16 py-3 text-sm font-extrabold text-center text-gray-900 bg-white border border-gray-300 rounded-lg focus:ring-primary-500 focus:border-primary-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500"
                                    required>
                            </div>
                            <div>
                                <label for="code-6" class="sr-only">Sixth code</label>
                                <input type="text" maxlength="1" onkeyup="focusNextInput(this, 'code-5', 'code-6')"
                                    name="code-6" id="code-6"
                                    class="block w-16 h-16 py-3 text-sm font-extrabold text-center text-gray-900 bg-white border border-gray-300 rounded-lg focus:ring-primary-500 focus:border-primary-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500"
                                    required>
                            </div>
                        </div>

                        <button type="submit"
                            class="text-white bg-gradient-to-r from-blue-500 via-blue-600 to-blue-700 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-blue-300 dark:focus:ring-blue-800 shadow-lg shadow-blue-500/50 dark:shadow-lg dark:shadow-blue-800/80 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2 mt-4">Check
                            OTP</button>

                    </form>
                </div>
            </section>
        </div>

        <script>
            function focusNextInput(el, prevId, nextId) {
                if (el.value.length === 0) {
                    document.getElementById(prevId).focus();
                } else {
                    document.getElementById(nextId).focus();
                }
            }
        </script>

        <c:if test="${emailVerErr != null}">
            <script src="static/js/verify_email.js"></script>
        </c:if>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.0/flowbite.min.js"></script>
    </body>

    </html>