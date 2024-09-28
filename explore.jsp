<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="a" uri="tss" %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Document</title>

            <script src="https://cdn.tailwindcss.com"></script>

            <script src="https://kit.fontawesome.com/921e89acba.js" crossorigin="anonymous"></script>

            <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.0/flowbite.min.css" rel="stylesheet" />
        </head>

        <body class="bg-gray-900 relative">
            <div class=" w-screen flex justify-center items-center added_cart_alert invisible fixed top-5 right-5">
                <div id="toast-message-cta"
                    class="w-full max-w-xs p-4 text-gray-500 bg-white rounded-lg shadow dark:bg-gray-800 dark:text-gray-400"
                    role="alert">
                    <div class="flex">
                        <!-- <img class="w-8 h-8 rounded-full" src="/docs/images/people/profile-picture-1.jpg"
                                alt="Jese Leos image" /> -->

                        <div class="ms-3 text-sm font-normal">
                            <span class="mb-1 text-sm font-semibold text-gray-900 dark:text-white">A Book Has Been Added
                                To Cart.</span>
                            <div class="mb-2 text-sm font-normal">Hi
                                <c:out value='${user.name.split(" ")[0]}' />, thanks for adding
                                <c:out value="a book" />
                            </div>
                        </div>
                        <button type="button"
                            class="ms-auto -mx-1.5 -my-1.5 bg-white justify-center items-center flex-shrink-0 text-gray-400 hover:text-gray-900 rounded-lg focus:ring-2 focus:ring-gray-300 p-1.5 hover:bg-gray-100 inline-flex h-8 w-8 dark:text-gray-500 dark:hover:text-white dark:bg-gray-800 dark:hover:bg-gray-700 close_added_button">
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
            <c:import url="header.jsp" />

            <div class="border-gray-700 border m-2 rounded-lg p-4">
                <h1
                    class="text-5xl font-semibold mb-8 font-sans text-white capitalize text-center text-wrap md:text-nowrap">
                    From our rental store</h1>
                <div
                    class="w-full  max-h-[950px] p-2 my-2 flex justify-center items-center gap-4 overflow-y-scroll flex-wrap">
                    <c:forEach var="rentalBook" items="${rentalbooks}">
                        <div
                            class="w-full h-[700px] max-w-sm bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
                            <a href="#">
                                <img class="p-8 rounded-t-lg w-full h-[60%]"
                                    src="show_explore_book_img.do?path=${rentalBook.bookImg}&email=${rentalBook.user.email}"
                                    alt="product image" />
                            </a>
                            <div class="px-5 pb-5">

                                <h5
                                    class="text-2xl md:text-3xl text-center font-semibold tracking-tight text-gray-900 uppercase dark:text-white">
                                    <c:out value="${rentalBook.title}" />
                                </h5>

                                <h1
                                    class="text-xl md:text-2xl text-center italic font-light text-gray-900 capitalize dark:text-white">
                                    <c:out value="${rentalBook.author}" />
                                </h1>

                                <div
                                    class="w-full max-h-[80px] text-center overflow-y-scroll text-wrap text-sm text-white my-3">
                                    <c:out value="${rentalBook.description}" />
                                </div>

                                <div class="flex w-[100%] justify-center gap-4  items-center mt-2.5 mb-5">
                                    <div class="flex items-center space-x-1 rtl:space-x-reverse">
                                        <c:if test="${user != null}">
                                            <c:choose>
                                                <c:when test="${a:isLiked(rentalBook.bookId, user.userId)}">
                                                    <form action="remove_a_wishlist.do" method="POST">
                                                        <input type="hidden" name="book-id"
                                                            value="${rentalBook.bookId}" />
                                                        <input type="hidden" name="user-id" value="${user.userId}" />
                                                        <input type="hidden" name="likes" value="${rentalBook.likes}" />
                                                        <button type="submit"><i
                                                                class="fa-solid fa-heart text-3xl text-red-600"></i></button>
                                                    </form>
                                                </c:when>
                                                <c:otherwise>
                                                    <form action="make_a_wishlist.do" method="POST">
                                                        <input type="hidden" name="book-id"
                                                            value="${rentalBook.bookId}" />
                                                        <input type="hidden" name="user-id" value="${user.userId}" />
                                                        <input type="hidden" name="likes" value="${rentalBook.likes}" />
                                                        <button type="submit"><i
                                                                class="fa-solid fa-heart text-3xl text-white"></i></button>
                                                    </form>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:if>

                                    </div>
                                    <span
                                        class="bg-blue-100 text-blue-800 text-xs font-semibold px-2.5 py-0.5 rounded dark:bg-blue-200 dark:text-blue-800 ms-3">
                                        <c:out value="${rentalBook.likes}" />
                                    </span>
                                </div>
                                <div class="flex items-center justify-between">
                                    <span class="text-3xl font-bold text-gray-900 dark:text-white">&#8377;
                                        <c:out value="${rentalBook.price}" />
                                    </span>
                                    <a href="#"
                                        class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Add
                                        to cart</a>
                                </div>
                            </div>
                        </div>
                    </c:forEach>

                </div>
            </div>


            <div class="border-gray-700 border m-2 rounded-lg p-4">
                <h1
                    class="text-5xl font-semibold mb-8 font-sans text-white capitalize text-center text-wrap md:text-nowrap">
                    From our author's</h1>
                <div
                    class="w-full  max-h-[950px] p-2 my-2 flex justify-center items-center gap-4 overflow-y-scroll flex-wrap">
                    <c:forEach var="saleBook" items="${salebooks}">
                        <div
                            class="w-full h-[700px] max-w-sm bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700 overflow-y-scroll">
                            <a href="#">
                                <img class="p-8 rounded-t-lg w-full h-[60%]"
                                    src="show_explore_book_img.do?path=${saleBook.bookImg}&email=${saleBook.user.email}"
                                    alt="product image" />
                            </a>
                            <div class="px-5 pb-5">

                                <h5
                                    class="text-2xl md:text-3xl text-center font-semibold tracking-tight text-gray-900 uppercase dark:text-white">
                                    <c:out value="${saleBook.title}" />
                                </h5>

                                <h1
                                    class="text-xl md:text-2xl text-center italic font-light text-gray-900 capitalize dark:text-white">
                                    <c:out value="${saleBook.author}" />
                                </h1>

                                <div
                                    class="w-full max-h-[80px] text-center overflow-y-scroll text-wrap text-sm text-white my-3">
                                    <c:out value="${saleBook.description}" />
                                </div>

                                <div class="flex w-[100%] justify-center gap-4  items-center mt-2.5 mb-5">
                                    <div class="flex items-center space-x-1 rtl:space-x-reverse">
                                        <c:if test="${user != null}">
                                            <c:choose>
                                                <c:when test="${a:isLiked(saleBook.bookId, user.userId)}">
                                                    <form action="remove_a_wishlist.do" method="POST">
                                                        <input type="hidden" name="book-id"
                                                            value="${saleBook.bookId}" />
                                                        <input type="hidden" name="user-id" value="${user.userId}" />
                                                        <input type="hidden" name="likes" value="${saleBook.likes}" />
                                                        <button type="submit"><i
                                                                class="fa-solid fa-heart text-3xl text-red-600"></i></button>
                                                    </form>
                                                </c:when>
                                                <c:otherwise>
                                                    <form action="make_a_wishlist.do" method="POST">
                                                        <input type="hidden" name="book-id"
                                                            value="${saleBook.bookId}" />
                                                        <input type="hidden" name="user-id" value="${user.userId}" />
                                                        <input type="hidden" name="likes" value="${saleBook.likes}" />
                                                        <button type="submit"><i
                                                                class="fa-solid fa-heart text-3xl text-white"></i></button>
                                                    </form>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:if>

                                    </div>
                                    <span
                                        class="bg-blue-100 text-blue-800 text-xs font-semibold px-2.5 py-0.5 rounded dark:bg-blue-200 dark:text-blue-800 ms-3">
                                        <c:out value="${saleBook.likes}" />
                                    </span>
                                </div>
                                <div class="flex items-center justify-between">
                                    <span class="text-3xl font-bold text-gray-900 dark:text-white">&#8377;
                                        <c:out value="${saleBook.price}" />
                                    </span>

                                    <c:if test="${user != null}">

                                        <c:choose>
                                            <c:when test="${cartbookids.contains(saleBook.bookId)}">
                                                <button disabled
                                                    class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800 cart-button disabled:bg-gray-500">Added
                                                    to cart</button>
                                            </c:when>

                                            <c:otherwise>
                                                <button id="${saleBook.bookId}"
                                                    class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800 cart-button disabled:bg-gray-500">Add
                                                    to cart</button>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:if>




                                </div>
                            </div>
                        </div>
                    </c:forEach>

                </div>
            </div>

            <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.0/flowbite.min.js"></script>
            <script src="static/js/explore.js"></script>
            <script>
                // Select all buttons with class 'myButton'
                const buttons = document.querySelectorAll('.cart-button');
                const closeButton = document.querySelector(".close_added_button");

                closeButton.addEventListener('click', () => {
                    document.querySelector(".added_cart_alert").classList.remove("visible");
                    document.querySelector(".added_cart_alert").classList.add("invisible");
                });

                const addToCart = async (bookId) => {
                    let response = await fetch('add_book_to_cart?book_id=' + bookId);
                    let result = await response.text();

                    return result;
                }

                const handleAddToCart = (e) => {
                    console.log(e.target.id);
                    addToCart(e.target.id).then((data) => {
                        if (data == "true") {
                            e.target.disabled = true;
                            e.target.innerText = "Added to Cart";
                            document.querySelector(".added_cart_alert").classList.toggle("invisible");

                        }
                    }).catch((error) => {
                        console.error(error);
                        alert("An error occurred while adding the book to the cart.");
                    })
                }

                // Loop through all buttons and attach a click event listener
                buttons.forEach(button => {
                    button.addEventListener('click', handleAddToCart);
                });
            </script>
        </body>

        </html>