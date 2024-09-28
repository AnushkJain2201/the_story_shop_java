<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <script src="https://cdn.tailwindcss.com"></script>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.0/flowbite.min.css" rel="stylesheet" />
    </head>
    <div class="bg-gray-900 h-[100vh]">
        <section class="py-8 antialiased bg-gray-900 md:py-16">
            <div class="mx-auto max-w-full px-4 2xl:px-0">
                <div class="mx-auto max-w-5xl">
                    <h2 class="text-3xl font-semibold text-white sm:text-5xl uppercase text-center ">Cart</h2>

                    <div class="mt-6 sm:mt-8 lg:flex lg:items-start lg:gap-12">
                        <div
                            class="w-full rounded-lg border max-h-screen md:max-h-[400px] p-4 shadow-sm border-gray-700 bg-gray-800 sm:p-6 lg:max-w-xl lg:p-8 overflow-y-scroll gap-3 flex justify-center items-center flex-col">
                            <c:choose>
                                <c:when test="${cartbooks.size() == 0}">
                                    <h1 class="font-bold text-2xl md:text-4xl capitalize text-center text-white">No book is added in the cart</h1>
                                </c:when>

                                <c:otherwise>
                                    <c:forEach var="cartbook" items="${cartbooks}">
                                        <div
                                            class="flex flex-col items-center bg-white border border-gray-200 rounded-lg shadow md:flex-row md:max-w-xl hover:bg-gray-100 dark:border-gray-700 dark:bg-gray-800 dark:hover:bg-gray-700 p-4">
                                            <img class="object-contain rounded-t-lg h-48 w-48 md:h-auto md:w-48 md:rounded-none md:rounded-s-lg"
                                                src="show_explore_book_img.do?path=${cartbook.bookImg}&email=${cartbook.user.email}"
                                                alt="hii">
                                            <div class="flex flex-col justify-between p-4 leading-normal">
                                                <h5
                                                    class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
                                                    <c:out value="${cartbook.title}" />
                                                </h5>

                                                <h5
                                                    class="mb-2 text-xl font-thin italic tracking-tight text-gray-900 dark:text-white">
                                                    <c:out value="${cartbook.author}" />
                                                </h5>
                                                <p class="mb-3 font-normal text-gray-700 dark:text-gray-400">
                                                    &#8377;
                                                    <c:out value="${cartbook.price}" />
                                                </p>

                                            </div>
                                        </div>
                                    </c:forEach>
                                </c:otherwise>
                            </c:choose>



                        </div>

                        <c:if test="${cartbooks.size() != 0}">
                            <div class="mt-6 grow sm:mt-8 lg:mt-0">
                                <div
                                    class="space-y-4 rounded-lg border border-gray-100 bg-gray-50 p-6 dark:border-gray-700 dark:bg-gray-800">
                                    <div class="space-y-2">
                                        <c:forEach var="cartbook" items="${cartbooks}">
                                            <dl class="flex items-center justify-between gap-4">
    
    
                                                <dt class="text-base font-normal text-gray-500 dark:text-gray-400">
                                                    <c:out value="${cartbook.title}" />
                                                </dt>
    
                                                <dd class="text-base font-medium text-gray-900 dark:text-white price">
                                                    <c:out value="${cartbook.price}.00" />
                                                </dd>
    
    
    
                                            </dl>
                                        </c:forEach>
    
                                        <dl class="flex items-center justify-between gap-4">
                                            <dt class="text-base font-normal text-gray-500 dark:text-gray-400">Store Pickup
                                            </dt>
                                            <dd class="text-base font-medium text-gray-900 dark:text-white price">
                                                50.00
                                            </dd>
                                        </dl>
    
                                        <dl class="flex items-center justify-between gap-4">
                                            <dt class="text-base font-normal text-gray-500 dark:text-gray-400">Tax</dt>
                                            <dd class="text-base font-medium text-gray-900 dark:text-white price">
                                                18.00
                                            </dd>
                                        </dl>
                                    </div>
    
                                    <dl
                                        class="flex items-center justify-between gap-4 border-t border-gray-200 pt-2 dark:border-gray-700">
                                        <dt class="text-base font-bold text-gray-900 dark:text-white">Total</dt>
                                        <dd class="text-base font-bold text-gray-900 dark:text-white total-price"
                                            id="totalPrice">
    
                                        </dd>
    
                                    </dl>
    
                                    <dl
                                        class="flex items-center justify-center gap-4 border-t border-gray-200 pt-2 dark:border-gray-700 ">
    
                                        <form action="sale_book_payment.do" method="get">
                                            <input type="text" name="total" hidden id="hidden_total">
                                            <button id="${saleBook.bookId}"
                                                class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800 cart-button disabled:bg-gray-500">Pay
                                                Now</button>
                                        </form>
    
    
    
    
                                    </dl>
                                </div>
    
                                <div class="mt-6 flex items-center justify-center gap-8">
                                    <img class="h-8 w-auto dark:hidden"
                                        src="https://flowbite.s3.amazonaws.com/blocks/e-commerce/brand-logos/paypal.svg"
                                        alt="" />
                                    <img class="hidden h-8 w-auto dark:flex"
                                        src="https://flowbite.s3.amazonaws.com/blocks/e-commerce/brand-logos/paypal-dark.svg"
                                        alt="" />
                                    <img class="h-8 w-auto dark:hidden"
                                        src="https://flowbite.s3.amazonaws.com/blocks/e-commerce/brand-logos/visa.svg"
                                        alt="" />
                                    <img class="hidden h-8 w-auto dark:flex"
                                        src="https://flowbite.s3.amazonaws.com/blocks/e-commerce/brand-logos/visa-dark.svg"
                                        alt="" />
                                    <img class="h-8 w-auto dark:hidden"
                                        src="https://flowbite.s3.amazonaws.com/blocks/e-commerce/brand-logos/mastercard.svg"
                                        alt="" />
                                    <img class="hidden h-8 w-auto dark:flex"
                                        src="https://flowbite.s3.amazonaws.com/blocks/e-commerce/brand-logos/mastercard-dark.svg"
                                        alt="" />
                                </div>
                            </div>
                        </c:if>
                        
                    </div>

                    <p class="mt-6 text-center text-gray-500 dark:text-gray-400 sm:mt-8 lg:text-left">
                        Payment processed by <a href="#" title=""
                            class="font-medium text-primary-700 underline hover:no-underline dark:text-primary-500">Paddle</a>
                        for <a href="#" title=""
                            class="font-medium text-primary-700 underline hover:no-underline dark:text-primary-500">Flowbite
                            LLC</a>
                        - United States Of America
                    </p>
                </div>
            </div>
        </section>
    </div>


    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.0/datepicker.min.js"></script>

    <script>
        const prices = document.querySelectorAll('.price');
        let total = 0;

        // Loop through each dd tag, remove the dollar sign, and sum up the prices
        prices.forEach(priceElement => {
            const priceText = priceElement.textContent;
            const priceNumber = parseFloat(priceText); // Remove $ and convert to number
            total += priceNumber;
        });

        document.getElementById('totalPrice').textContent = total.toFixed(2);

        document.getElementById("hidden_total").value = total.toFixed(2).toString();

    </script>



    </html>