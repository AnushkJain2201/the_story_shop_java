<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>

    <script src="https://cdn.tailwindcss.com"></script>

    <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.0/flowbite.min.css" rel="stylesheet" />
</head>

<body>
    <div class="flex justify-center items-center h-[100vh] bg-gray-900">
        <section
            class="bg-white dark:bg-gray-900 bg-[url('https://flowbite.s3.amazonaws.com/docs/jumbotron/hero-pattern.svg')] dark:bg-[url('https://flowbite.s3.amazonaws.com/docs/jumbotron/hero-pattern-dark.svg')]">
            <div class="py-8 px-4 mx-auto max-w-screen-xl text-center lg:py-16 z-10 relative">
                <p
                    class="inline-flex justify-between items-center py-1 px-1 pe-4 mb-7 text-sm text-blue-700 bg-blue-100 rounded-full dark:bg-blue-900 dark:text-blue-300 hover:bg-blue-200 dark:hover:bg-blue-800">
                    <span class="text-xs bg-blue-600 rounded-full text-white px-4 py-1.5 me-3">Hello!</span>
                    <span class="text-sm font-medium">To proceed further, you must verify your Email</span>
                </p>
                <h1
                    class="mb-7 text-4xl font-extrabold tracking-tight leading-none text-gray-900 md:text-5xl lg:text-6xl dark:text-white">
                    Welcome To The Story Shop
                </h1>
                <p class="mb-8 text-lg font-normal text-gray-500 lg:text-xl sm:px-16 lg:px-48 dark:text-gray-200">
                    To complete your account verification process, we have sent a 6-digit One-Time Password (OTP) to the email address associated with your account. Please check your inbox and provide the OTP in the designated field to ensure the security and integrity of your account.
                </p>
                <form action="verify_email.do" class="flex justify-center items-center flex-col">
                    <div class="flex mb-2 space-x-2 ">
                        <div>
                            <label for="code-1" class="sr-only">First code</label>
                            <input type="text" maxlength="1" onkeyup="focusNextInput(this, 'code-1', 'code-2')" id="code-1" class="block w-16 h-16 py-3 text-sm font-extrabold text-center text-gray-900 bg-white border border-gray-300 rounded-lg focus:ring-primary-500 focus:border-primary-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500" required>
                        </div>
                        <div>
                            <label for="code-2" class="sr-only">Second code</label>
                            <input type="text" maxlength="1" onkeyup="focusNextInput(this, 'code-1', 'code-3')" id="code-2" class="block w-16 h-16 py-3 text-sm font-extrabold text-center text-gray-900 bg-white border border-gray-300 rounded-lg focus:ring-primary-500 focus:border-primary-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500" required>
                        </div>
                        <div>
                            <label for="code-3" class="sr-only">Third code</label>
                            <input type="text" maxlength="1" onkeyup="focusNextInput(this, 'code-2', 'code-4')" id="code-3" class="block w-16 h-16 py-3 text-sm font-extrabold text-center text-gray-900 bg-white border border-gray-300 rounded-lg focus:ring-primary-500 focus:border-primary-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500" required>
                        </div>
                        <div>
                            <label for="code-4" class="sr-only">Fourth code</label>
                            <input type="text" maxlength="1" onkeyup="focusNextInput(this, 'code-3', 'code-5')" id="code-4" class="block w-16 h-16 py-3 text-sm font-extrabold text-center text-gray-900 bg-white border border-gray-300 rounded-lg focus:ring-primary-500 focus:border-primary-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500" required>
                        </div>
                        <div>
                            <label for="code-5" class="sr-only">Fivth code</label>
                            <input type="text" maxlength="1" onkeyup="focusNextInput(this, 'code-4', 'code-6')" id="code-5" class="block w-16 h-16 py-3 text-sm font-extrabold text-center text-gray-900 bg-white border border-gray-300 rounded-lg focus:ring-primary-500 focus:border-primary-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500" required>
                        </div>
                        <div>
                            <label for="code-6" class="sr-only">Sixth code</label>
                            <input type="text" maxlength="1" onkeyup="focusNextInput(this, 'code-5', 'code-6')" id="code-6" class="block w-16 h-16 py-3 text-sm font-extrabold text-center text-gray-900 bg-white border border-gray-300 rounded-lg focus:ring-primary-500 focus:border-primary-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500" required>
                        </div>
                    </div>

                    <button type="submit" class="text-white bg-gradient-to-r from-blue-500 via-blue-600 to-blue-700 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-blue-300 dark:focus:ring-blue-800 shadow-lg shadow-blue-500/50 dark:shadow-lg dark:shadow-blue-800/80 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2 mt-4">Check OTP</button>

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

    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.0/flowbite.min.js"></script>
</body>

</html>