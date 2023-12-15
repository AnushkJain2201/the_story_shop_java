<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <script src="https://cdn.tailwindcss.com"></script>

    <script src="https://kit.fontawesome.com/921e89acba.js" crossorigin="anonymous"></script>

    <title>The Story Shop - Sign Up</title>

    <link href="https://api.fontshare.com/v2/css?f[]=sharpie@400&f[]=tanker@400&f[]=pencerio@50&f[]=stardom@400&display=swap" rel="stylesheet"> 

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />

    <style>
        .headin{
            font-family: 'Stardom', sans-serif;
        }
    </style>

</head>


<body class="flex justify-center items-center min-h-screen bg-[url('static/media/images/signup/bg3.jpg')] bg-cover bg-center flex-col relative">
    <div class="absolute top-8 left-8 text-3xl text-white cursor-pointer">
        <i class="fa-solid fa-arrow-left"></i>
    </div>
    
    <div class="wrapper w-[480px] text-text-gray-800 rounded-xl pt-8 pb-8 pr-10 pl-10 h-full bg-indigo-900 bg-clip-padding backdrop-filter backdrop-blur-sm bg-opacity-10 border border-spacing-2 border-gray-800">
        <form action="getting_started.do" method="post">
            <h1 class="text-[50px] text-center font-bold text-white bg-gray-800 rounded-lg headin animate__animated animate__bounceIn animate__slower">SIGN UP</h1>

            <div class="input-box w-full h-[80px] my-[20px] mx-0 relative text-[20px]">
                <input type="text" placeholder="Full Name" required class="w-full h-[70%] bg-transparent border-2 border-gray-800 outline-none rounded-[40px] px-7 py-7 placeholder:text-gray-800 mb-0">
                <i class="fa-solid fa-user absolute right-[20px] top-[25%]"></i>
                <div class="animate__animated animate__flash animate__infinite animate__slower">
                    <span class="text-xs mx-6 border py-1 px-1 rounded-md border-red-700 bg-red-400 text-gray-800 font-medium">Please Write Correct Name</span>
                </div>
            </div>

            <div class="input-box w-full h-[80px] my-[20px] mx-0 relative text-[20px]">
                <input type="text" placeholder="Email" required class="w-full h-[70%] bg-transparent border-2 border-gray-800 outline-none rounded-[40px] px-7 py-7 placeholder:text-gray-800 mb-0">
                <i class="fa-solid fa-envelope absolute right-[20px] top-[25%]"></i>
                <div class="animate__animated animate__flash animate__infinite animate__slower">
                    <span class="text-xs mx-6 border py-1 px-1 rounded-md border-red-700 bg-red-400 text-gray-800 font-medium">Please Write Correct Email</span>
                </div>
            </div>

            <div class="input-box w-full h-[80px] my-[20px] mx-0 relative text-[20px]">
                <input type="password" placeholder="Password" required class="w-full h-[70%] bg-transparent border-2 border-gray-800 outline-none rounded-[40px] px-7 py-7 placeholder:text-gray-800 mb-0">
                <i class="fa-solid fa-lock absolute right-[20px] top-[25%]"></i>
                <div class="animate__animated animate__flash animate__infinite animate__slower">
                    <span class="text-xs mx-6 border py-1 px-1 rounded-md border-red-700 bg-red-400 text-gray-800 font-medium">Password must be 8 letter long</span>
                </div>
            </div>

            <div class="input-box w-full h-[80px] my-[10px] mx-0 relative text-[20px]">
                <select class="w-full h-[70%] bg-transparent border-2 border-gray-800 outline-none rounded-[40px] px-7 ">
                    <option value="0">Select</option>
                    <option value="1">India</option>
                    <option value="1">India</option>
                    <option value="1">India</option>
                    <option value="1">India</option>
                    <option value="1">India</option>
                    <option value="1">India</option>
                    <option value="1">India</option>
                    <option value="1">India</option>
                    <option value="1">Guju</option>
                    <option value="1">Guju</option>
                    <option value="1">Guju</option>
                    <option value="1">Guju</option>
                    <option value="1">Guju</option>
                    <option value="1">Guju</option>
                    <option value="1">Guju</option>
                    <option value="1">Guju</option>
                    <option value="1">Guju</option>
                    <option value="1">Guju</option>
                    <option value="1">Guju</option>
                </select>
                <div class="animate__animated animate__flash animate__infinite animate__slower">
                    <span class="text-xs mx-6 border py-1 px-1 rounded-md border-red-700 bg-red-400 text-gray-800 font-medium">Please Select A Country</span>
                </div>
            </div>

            <div class="input-box w-full h-[80px] my-[20px] mx-0 relative text-[20px]">
                <input type="text" placeholder="Phone" required class="w-full h-[70%] bg-transparent border-2 border-gray-800 outline-none rounded-[40px] px-7 py-7 placeholder:text-gray-800 mb-0">
                <i class="fa-solid fa-phone absolute right-[20px] top-[25%]"></i>
                <div class="animate__animated animate__flash animate__infinite animate__slower">
                    <span class="text-xs mx-6 border py-1 px-1 rounded-md border-red-700 bg-red-400 text-gray-800 font-medium">Please Write A Aceepted Phone Number</span>
                </div>
            </div>

            <!-- <div class="remember-forgot flex justify-between text-[16.5px] m-3">
                <label><input type="checkbox" class="accent-cyan-300 mr-1">Remember me</label>
                <a href="#" class="text-cyan-300 hover:underline">Forgot Password?</a>
            </div> -->

            <button type="submit" class="btn w-full h-11 bg-gray-800 rounded-[40px] shadow-[0 0 10px rgba(0, 0, 0, .1)] cursor-pointer text-[18px] text-white font-semibold headin">Sign Up</button>

            <div class="register-link text-[14.5px] text-center mt-5">
                <p class="text-gray-200">Already have an account? <a href="#" class="text-white font-semibold hover:underline">Login Here</a></p>
            </div>

        </form>

    </div>
</body>
</html>