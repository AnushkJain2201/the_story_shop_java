<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <script src="https://cdn.tailwindcss.com"></script>

    <script
      type="module"
      src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"
    ></script>

    <script
      nomodule
      src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"
    ></script>

    <script
      src="https://kit.fontawesome.com/921e89acba.js"
      crossorigin="anonymous"
    ></script>

    <link
      href="https://api.fontshare.com/v2/css?f[]=sharpie@400&f[]=tanker@400&display=swap"
      rel="stylesheet"
    />

    <!-- Script for the typewriter effect  -->
    <script src="https://unpkg.com/typed.js@2.1.0/dist/typed.umd.js"></script>

    <style>
      .headin h1 {
        font-family: "Tanker", sans-serif;
      }
    </style>

    <title>The Story Shop - Home</title>
  </head>
  <body class="bg-gray-900">
    <%@ include file="header.jsp" %>

    <main class="bg-gray-900 md:px-24 px-8">
      <div class="md:h-[580px] h-[550px] bg-gradient-to-b from-gray-900 to-gray-700 mb-24 rounded-b-[50px] relative">
        <div class="headin md:h-[300px] text-gray-200 flex md:justify-around justify-between items-center flex-col">
          <h1 class="md:text-6xl text-2xl md:mb-0 mb-6">Welcome To <span class="auto-type"></span></h1>

          <p class="text-center md:text-2xl text-lg md:p-6">
            Step into our enchanting haven of literature, where every book whispers a promise of adventure and knowledge. Immerse yourself in the intoxicating aroma of well-worn pages, as shelves laden with stories from every genre invite you to embark on a journey of boundless imagination. Our bookstore is a sanctuary for bibliophiles, a place where the magic of words comes alive, creating a symphony of stories waiting to be discovered and cherished. Unleash your literary desires and let the pages turn, for within these walls, a universe of captivating narratives awaits your eager embrace.
          </p>
        </div>

        <div class="absolute md:top-[240px] md:left-[450px] top-[382px] left-12 ">
          <img
            src="static/media/images/landing/Book_log_2.png"
            class="md:h-[450px] h-[225px]"
            alt="bookshop"
          />
        </div>
      </div>

      <div class="md:mb-8 flex md:flex-row flex-col-reverse md:justify-around justify-between items-center">
        <div class="md:max-w-2xl text-white flex justify-between items-center flex-col">
          <h1 class="font-bold md:text-5xl text-2xl headin md:tracking-wide text-center">
            Welcome To The Story Shop
          </h1>
          <p class="text-center">
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam
            dolorum, cupiditate officiis aut magnam reiciendis commodi deleniti
            pariatur ipsam. Voluptates omnis minus dolore ipsum hic inventore
            nam, doloribus voluptas neque. Ducimus unde, soluta repudiandae
            asperiores molestias, doloribus exercitationem possimus nulla ea
            magnam at tempora reprehenderit veniam alias, rem temporibus iure
            ipsa quasi optio inventore quae voluptatum. Assumenda perferendis
            neque recusandae.
          </p>
        </div>

        <div class="md:mb-0 mb-5">
          <img
            src="static/media/images/landing/Bookshop.gif"
            class="md:w-96 w-48 rounded-3xl"
            alt="bookshop"
          />
        </div>
      </div>

      <div class="h-[500px] bg-red-500 md:mb-8"></div>

      <div class="h-[500px] bg-yellow-500 md:mb-8"></div>
    </main>

    <script>
      var typed = new Typed(".auto-type", {
        strings: ["The Story Shop", "The Reader's Heaven", "The Nerd's Place"],
        typeSpeed: 150,
        backSpeed: 150,
        loop: true,
      });
    </script>

    <%@ include file="footer.jsp" %>
  </body>
</html>
