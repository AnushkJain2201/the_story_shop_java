<nav class="md:pl-24 md:pr-24 p-6 bg-gray-900 shadow md:flex md:items-center md:justify-between ">
    <div class="flex justify-between items-center">
        <span class="text-2xl font-[Poppins] cursor-pointer font-extrabold">
            <img class="h-12 inline m-3" src="static/media/logos/logo_white.png" alt="thestoryshop">
            <!-- <span class="hidden md:inline text-white">The Story Shop</span>  -->
        </span>

        <span class="text-3xl cursor-pointer md:hidden block text-white md:mr-0 mr-2">
            <ion-icon name="menu-outline" onclick="Menu(this)"></ion-icon>
        </span>
    </div>

    <ul class="md:flex md:items-center z-[1] md:z-auto md:static absolute bg-gray-900 text-white w-full left-0 md:w-auto md:py-0 py-4 md:pl-0 pl-7 md:opacity-100 opacity-0 top-[-400px] transition-all ease-in duration-500">
        <li class="mx-4 my-6 md:my-0">
            <a href="#" class="text-xl hover:text-cyan-500 duration-500 font-semibold">HOME</a>
        </li>
        <li class="mx-4 my-6 md:my-0">
            <a href="#" class="text-xl hover:text-cyan-500 duration-500 font-semibold">SERVICES</a>
        </li>
        <li class="mx-4 my-6 md:my-0">
            <a href="#" class="text-xl hover:text-cyan-500 duration-500 font-semibold">ABOUT</a>
        </li>
        <li class="mx-4 my-6 md:my-0">
            <a href="#" class="text-xl hover:text-cyan-500 duration-500 font-semibold">CONTACT</a>
        </li>

        <a href="getting_started.do"><button class="bg-cyan-400 text-white font-[Poppins] transition-all ease-in duration-500 px-6 py-2 mx-4 hover:bg-cyan-600 rounded font-extrabold">
            Get Started
        </button></a>
    </ul>
</nav>

<script>
    function Menu(e) {
        let list = document.querySelector('ul');
        e.name === 'menu-outline' ? (e.name = "close-outline", list.classList.add('top-[100px]'), list.classList.add('opacity-100')) : (e.name = "menu-outline", list.classList.remove('top-[100px]'), list.classList.remove('opacity-100'))
    }
</script>