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

        <body class="bg-gray-900">
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
                            class="w-full h-[700px] max-w-sm bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
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
                                    <a href="#"
                                        class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Add
                                        to cart</a>
                                </div>
                            </div>
                        </div>
                    </c:forEach>

                </div>
            </div>

            <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.0/flowbite.min.js"></script>
            <script src="static/js/explore.js"></script>
        </body>

        </html>