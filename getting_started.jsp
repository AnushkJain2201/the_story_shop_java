<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <script src="https://cdn.tailwindcss.com"></script>

    <script src="https://kit.fontawesome.com/921e89acba.js" crossorigin="anonymous"></script>

    <title>The Story Shop - Sign Up</title>
</head>
<body class="flex justify-center items-center min-h-screen bg-[url('static/media/images/signup/bg.jpg')] bg-cover bg-center">

    <div class="wrapper w-[600px] text-white rounded-xl pt-8 pb-8 pr-10 pl-10 h-full bg-indigo-900 bg-clip-padding backdrop-filter backdrop-blur-md bg-opacity-10 border border-gray-100
    ">
        <form action="getting_started.do" method="post" enctype="multipart/form-data">
            <h1 class="text-[50px] text-center font-bold text-white">Signup Form</h1>

            <div class="input-box w-full h-[150px] my-[30px] mx-0 relative flex items-center justify-center">
                <img src="static/media/images/signup/user.png" alt="/" class="h-[170px] w-[170px] rounded-full cursor-pointer" id="image">
                <input type="file" id="my_file" class="hidden" required>
            </div>

            <div class="input-box w-full h-[50px] my-[30px] mx-0 relative text-[20px]">
                <input type="text" placeholder="Full Name" required class="w-full h-full bg-transparent border-2 border-[rgba(255, 255, 255, .2)] outline-none rounded-[40px] px-7 py-7 placeholder:text-white">
                <i class="fa-solid fa-user absolute right-[20px] top-[40%]"></i>
            </div>

            <div class="input-box w-full h-[50px] my-[30px] mx-0 relative text-[20px]">
                <input type="email" placeholder="Email" required class="w-full h-full bg-transparent border-2 border-[rgba(255, 255, 255, .2)] outline-none rounded-[40px] px-7 py-7 placeholder:text-white">
                <i class="fa-solid fa-envelope absolute right-[20px] top-[40%]"></i>
            </div>

            <div class="input-box w-full h-[50px] my-[30px] mx-0 relative text-[20px]">
                <input type="password" placeholder="Password" required class="w-full h-full bg-transparent border-2 border-[rgba(255, 255, 255, .2)] outline-none rounded-[40px] px-7 py-7 placeholder:text-white">
                <i class="fa-solid fa-lock absolute right-[20px] top-[40%]"></i>
            </div>

            <!-- <div class="remember-forgot flex justify-between text-[16.5px] m-3">
                <label><input type="checkbox" class="accent-cyan-300 mr-1">Remember me</label>
                <a href="#" class="text-cyan-300 hover:underline">Forgot Password?</a>
            </div> -->

            <button type="submit" class="btn w-full h-11 bg-[#fff] rounded-[40px] shadow-[0 0 10px rgba(0, 0, 0, .1)] cursor-pointer text-[18px] text-[#333] font-semibold">Signup</button>

            <div class="register-link text-[14.5px] text-center mt-5">
                <p class="text-[#fff]">Already have an account? <a href="#" class="text-[#fff] font-semibold hover:underline">Login Here</a></p>
            </div>

        </form>

    </div>

    <script>
        // $('#image').click(function(){
        //     $('#my_file').click()
        // })

        const dp = document.getElementById("image");

        const fileInp = document.getElementById("my_file");

        dp.onclick = function() {
            fileInp.click()
        }
    </script>
</body>
</html>