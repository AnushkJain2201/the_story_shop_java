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

    <title>The Story Shop - Home</title>

    <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.1/flowbite.min.css" rel="stylesheet" />
</head>

<body class="bg-gray-900">
    <%@ include file="header.jsp" %>

        <main class="bg-gray-900 md:px-24 px-8">
            <div
                class="md:h-[580px] h-[620px] bg-gradient-to-b from-gray-900 to-gray-700 mb-24 rounded-b-[50px] relative">
                <div
                    class="headin md:h-[300px] text-gray-200 flex md:justify-around justify-between items-center flex-col">
                    <h1 class="md:text-6xl text-2xl md:mb-0 mb-6">
                        Welcome To The <span class="auto-type"></span>
                    </h1>

                    <p class="text-center md:text-2xl text-lg md:p-6 p-4">
                        Step into our enchanting haven of literature, where every book
                        whispers a promise of adventure and knowledge. Immerse yourself in
                        the intoxicating aroma of well-worn pages, as shelves laden with
                        stories from every genre invite you to embark on a journey of
                        boundless imagination. Our bookstore is a sanctuary for
                        bibliophiles, a place where the magic of words comes alive, creating
                        a symphony of stories waiting to be discovered and cherished.
                        Unleash your literary desires and let the pages turn, for within
                        these walls, a universe of captivating narratives awaits your eager
                        embrace.
                    </p>
                </div>

                <div class="absolute md:top-[240px] md:left-[450px] top-[382px] left-12 md:block hidden">
                    <img src="static/media/images/landing/Book_log_2.png" class="md:h-[450px] h-[225px]"
                        alt="bookshop" />
                </div>
            </div>

            <div class="md:mb-8 flex md:flex-row flex-col-reverse md:justify-around justify-between items-center">
                <div class="md:max-w-2xl text-white flex justify-between items-center flex-col space-y-10">
                    <h1 class="font-bold md:text-5xl text-2xl headin md:tracking-wide text-center">
                        About Us
                    </h1>
                    <p class="text-center">
                        Welcome to our vibrant online bookstore, where the world of literature comes alive in unique and exciting ways! At The Story Shop, we go beyond just selling books; we offer a dynamic platform that caters to every facet of the reader's experience. Dive into our extensive collection of books available for purchase, or explore the thrill of literary exploration by renting your favorite titles, making reading more accessible and sustainable.

                        <br>
                        
                        But that's not all - we believe in fostering a community of book lovers. Authors, both celebrated and emerging, showcase their works on our platform, connecting directly with their readers. Engage in fascinating conversations during our online meet and greet sessions or mark your calendar for our exclusive offline events where book enthusiasts come together to celebrate the magic of storytelling. 
                        
                    </p>
                </div>

                <div class="md:mb-0 mb-5">
                    <img src="static/media/images/landing/Bookshop.gif" class="md:w-96 w-48 rounded-3xl"
                        alt="bookshop" />
                </div>
            </div>

            <div
                class="md:mb-8 flex md:flex-row-reverse flex-col-reverse md:justify-around justify-between items-center mt-16">
                <div class="md:max-w-2xl text-white flex justify-between items-center flex-col space-y-10">
                    <h1 class="font-bold md:text-5xl text-2xl headin md:tracking-wide text-center">
                        Authors In The House
                    </h1>
                    <p class="text-center">
                        In the ethereal realms of literary discovery, our platform stands adorned with the luminary presence of wordsmiths who weave tales that resonate through time. A constellation of celebrated authors graces our curated space, each offering a unique hue to the ever-expanding palette of stories. From the eloquent prose of seasoned wordsmiths to the captivating narratives of emerging literary stars, our platform is a tapestry of voices that transcend the ordinary. Ephemeral yet profound, these authors transform our space into a sanctuary where readers commune with the quintessence of literary artistry. Welcome to a panorama of storytelling, where the brilliance of renowned authors converges to create an immersive sojourn, inviting you to explore the echelons of literary excellence. Step into this enigmatic world where each page is a memoir, and every author is a revered luminary in the constellation of our literary cosmos.
                    </p>
                </div>

                <div class="md:mb-0 mb-5">
                    <img src="static/media/images/landing/Novelist_writing.gif" class="md:w-96 w-48 rounded-3xl"
                        alt="bookshop" />
                </div>
            </div>

            <div class="md:mb-8 flex md:flex-row flex-col-reverse md:justify-around justify-between items-center mt-16">
                <div class="md:max-w-2xl text-white flex justify-between items-center flex-col space-y-10">
                    <h1 class="font-bold md:text-5xl text-2xl headin md:tracking-wide text-center">
                        Share The Love Of Reading
                    </h1>
                    <p class="text-center">
                        In the quiet alcoves of contemplation, where time seems to dance at the gentle turn of a page, readers emerge as seekers of solace in the artistry of words. Aesthetic voyagers navigating the vast landscapes of literature, they traverse the realms of prose with an insatiable thirst for the poetic, discovering the sublime within the bound pages of every book. Bibliophiles, their hearts resonate with the harmonious melody of mellifluous sentences, and their minds harbor the verdant landscapes of countless stories. Engaged in a dance of serendipity, readers are bibliomaniacs, curators of worlds both quaint and profound.

                        <br>

                        <strong>Welcome to our literary haven, where the pursuit of knowledge is an aesthetic odyssey, and the heart of every reader beats in harmony with the boundless worlds that rest upon our shelves.</strong> 
                    </p>
                </div>

                <div class="md:mb-0 mb-5">
                    <img src="static/media/images/landing/Book_lover.gif" class="md:w-96 w-48 rounded-3xl"
                        alt="bookshop" />
                </div>
            </div>

            <div
                class="md:mb-8 flex md:flex-row-reverse flex-col-reverse md:justify-around justify-between items-center mt-16">
                <div class="md:max-w-2xl text-white flex justify-between items-center flex-col space-y-10">
                    <h1 class="font-bold md:text-5xl text-2xl headin md:tracking-wide text-center">
                        Our Rental Store
                    </h1>
                    <p class="text-center">
                        For those looking to share their own literary treasures, our book rental program allows customers to lend and borrow books, creating a dynamic exchange of stories and ideas. Plus, indulge in our premium services, which include personalized reading recommendations, early access to exclusive releases, and curated book boxes delivered right to your doorstep.

                        <button type="button" class="text-white bg-gradient-to-r from-cyan-400 via-cyan-500 to-cyan-600 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-cyan-300 dark:focus:ring-cyan-800 font-medium rounded-lg text-sm px-5 py-3 text-center me-2 mb-2 mt-5">Rental Store</button>
                    </p>
                </div>

                <div class="md:mb-0 mb-5">
                    <img src="static/media/images/landing/Reading_book.gif" class="md:w-96 w-48 rounded-3xl"
                        alt="bookshop" />
                </div>
            </div>

            <div class="md:mb-8 flex md:flex-row flex-col-reverse md:justify-around justify-between items-center mt-16">
                <div id="default-carousel" class="relative w-full" data-carousel="slide">
                    <!-- Carousel wrapper -->
                    <div class="relative h-56 overflow-hidden rounded-lg md:h-96">
                        <!-- Item 1 -->
                        <div class="hidden duration-700 ease-in-out" data-carousel-item>
                            <img src="static/media/images/landing/carousel1.png"
                                class="absolute block w-full -translate-x-1/2 -translate-y-1/2 top-1/2 left-1/2"
                                alt="...">
                        </div>
                        <!-- Item 2 -->
                        <div class="hidden duration-700 ease-in-out" data-carousel-item>
                            <img src="static/media/images/landing/meet.png"
                                class="absolute block w-full -translate-x-1/2 -translate-y-1/2 top-1/2 left-1/2"
                                alt="...">
                        </div>
                        <!-- Item 3 -->
                        <div class="hidden duration-700 ease-in-out" data-carousel-item>
                            <img src="static/media/images/landing/trial.png"
                                class="absolute block w-full -translate-x-1/2 -translate-y-1/2 top-1/2 left-1/2"
                                alt="...">
                        </div>
                        <!-- Item 4 -->
                        <div class="hidden duration-700 ease-in-out" data-carousel-item>
                            <img src="static/media/images/landing/trial.png"
                                class="absolute block w-full -translate-x-1/2 -translate-y-1/2 top-1/2 left-1/2"
                                alt="...">
                        </div>
                        <!-- Item 5 -->
                        <div class="hidden duration-700 ease-in-out" data-carousel-item>
                            <img src="static/media/images/landing/trial.png"
                                class="absolute block w-full -translate-x-1/2 -translate-y-1/2 top-1/2 left-1/2"
                                alt="...">
                        </div>
                    </div>
                    <!-- Slider indicators -->
                    <div class="absolute z-30 flex -translate-x-1/2 bottom-5 left-1/2 space-x-3 rtl:space-x-reverse">
                        <button type="button" class="w-3 h-3 rounded-full" aria-current="true" aria-label="Slide 1"
                            data-carousel-slide-to="0"></button>
                        <button type="button" class="w-3 h-3 rounded-full" aria-current="false" aria-label="Slide 2"
                            data-carousel-slide-to="1"></button>
                        <button type="button" class="w-3 h-3 rounded-full" aria-current="false" aria-label="Slide 3"
                            data-carousel-slide-to="2"></button>
                        <button type="button" class="w-3 h-3 rounded-full" aria-current="false" aria-label="Slide 4"
                            data-carousel-slide-to="3"></button>
                        <button type="button" class="w-3 h-3 rounded-full" aria-current="false" aria-label="Slide 5"
                            data-carousel-slide-to="4"></button>
                    </div>
                    <!-- Slider controls -->
                    <button type="button"
                        class="absolute top-0 start-0 z-30 flex items-center justify-center h-full px-4 cursor-pointer group focus:outline-none"
                        data-carousel-prev>
                        <span
                            class="inline-flex items-center justify-center w-10 h-10 rounded-full bg-white/30 dark:bg-gray-800/30 group-hover:bg-white/50 dark:group-hover:bg-gray-800/60 group-focus:ring-4 group-focus:ring-white dark:group-focus:ring-gray-800/70 group-focus:outline-none">
                            <svg class="w-4 h-4 text-white dark:text-gray-800 rtl:rotate-180" aria-hidden="true"
                                xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 6 10">
                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                    stroke-width="2" d="M5 1 1 5l4 4" />
                            </svg>
                            <span class="sr-only">Previous</span>
                        </span>
                    </button>
                    <button type="button"
                        class="absolute top-0 end-0 z-30 flex items-center justify-center h-full px-4 cursor-pointer group focus:outline-none"
                        data-carousel-next>
                        <span
                            class="inline-flex items-center justify-center w-10 h-10 rounded-full bg-white/30 dark:bg-gray-800/30 group-hover:bg-white/50 dark:group-hover:bg-gray-800/60 group-focus:ring-4 group-focus:ring-white dark:group-focus:ring-gray-800/70 group-focus:outline-none">
                            <svg class="w-4 h-4 text-white dark:text-gray-800 rtl:rotate-180" aria-hidden="true"
                                xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 6 10">
                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                    stroke-width="2" d="m1 9 4-4-4-4" />
                            </svg>
                            <span class="sr-only">Next</span>
                        </span>
                    </button>
                </div>
            </div>

        </main>

        <script>
            var typed = new Typed(".auto-type", {
                strings: ["Story Shop", "Reader's Heaven", "Bibliophile's Bazaar"],
                typeSpeed: 150,
                backSpeed: 150,
                loop: true,
            });
        </script>

        <%@ include file="footer.jsp" %>

            <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.1/flowbite.min.js"></script>
</body>

</html>