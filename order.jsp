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

            <c:import url="header.jsp" />


            <section class="bg-white py-8 antialiased dark:bg-gray-900 md:py-16">
                <div class="mx-auto max-w-screen-xl px-4 2xl:px-0">
                    <div class="mx-auto max-w-5xl">
                        <div class="gap-4 sm:flex sm:items-center sm:justify-between">
                            <h2 class="text-xl font-semibold text-gray-900 dark:text-white sm:text-2xl">My orders</h2>

                            <div
                                class="mt-6 gap-4 space-y-4 sm:mt-0 sm:flex sm:items-center sm:justify-end sm:space-y-0">
                                <div>
                                    <label for="order-type"
                                        class="sr-only mb-2 block text-sm font-medium text-gray-900 dark:text-white">Select
                                        order type</label>
                                    <select id="order-type"
                                        class="block w-full min-w-[8rem] rounded-lg border border-gray-300 bg-gray-50 p-2.5 text-sm text-gray-900 focus:border-primary-500 focus:ring-primary-500 dark:border-gray-600 dark:bg-gray-700 dark:text-white dark:placeholder:text-gray-400 dark:focus:border-primary-500 dark:focus:ring-primary-500">
                                        <option selected>All orders</option>
                                        <option value="pre-order">Pre-order</option>
                                        <option value="transit">In transit</option>
                                        <option value="confirmed">Confirmed</option>
                                        <option value="cancelled">Cancelled</option>
                                    </select>
                                </div>

                                <span class="inline-block text-gray-500 dark:text-gray-400"> from </span>

                                <div>
                                    <label for="duration"
                                        class="sr-only mb-2 block text-sm font-medium text-gray-900 dark:text-white">Select
                                        duration</label>
                                    <select id="duration"
                                        class="block w-full rounded-lg border border-gray-300 bg-gray-50 p-2.5 text-sm text-gray-900 focus:border-primary-500 focus:ring-primary-500 dark:border-gray-600 dark:bg-gray-700 dark:text-white dark:placeholder:text-gray-400 dark:focus:border-primary-500 dark:focus:ring-primary-500">
                                        <option selected>this week</option>
                                        <option value="this month">this month</option>
                                        <option value="last 3 months">the last 3 months</option>
                                        <option value="lats 6 months">the last 6 months</option>
                                        <option value="this year">this year</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="mt-6 flow-root sm:mt-8">
                            <div class="divide-y divide-gray-200 dark:divide-gray-700">

                                <c:forEach var="order" items="${orders}">
                                    <div class="flex flex-wrap items-center gap-y-4 py-6">
                                        <dl class="w-1/2 sm:w-1/4 lg:w-auto lg:flex-1">
                                            <dt class="text-base font-medium text-gray-500 dark:text-gray-400">Order ID:
                                            </dt>
                                            <dd class="mt-1.5 text-base font-semibold text-gray-900 dark:text-white">
                                                <a href="#" class="hover:underline">#<c:out value="${order.orderId}" /></a>
                                            </dd>
                                        </dl>

                                        <dl class="w-1/2 sm:w-1/4 lg:w-auto lg:flex-1">
                                            <dt class="text-base font-medium text-gray-500 dark:text-gray-400">Date:
                                            </dt>
                                            <dd class="mt-1.5 text-base font-semibold text-gray-900 dark:text-white">
                                                <c:out value="${order.orderDate}" /></dd>
                                        </dl>

                                        <dl class="w-1/2 sm:w-1/4 lg:w-auto lg:flex-1">
                                            <dt class="text-base font-medium text-gray-500 dark:text-gray-400">Price:
                                            </dt>
                                            <dd class="mt-1.5 text-base font-semibold text-gray-900 dark:text-white">
                                                &#8377;<c:out value="${order.totalAmount}" />
                                            </dd>
                                        </dl>

                                        <dl class="w-1/2 sm:w-1/4 lg:w-auto lg:flex-1">
                                            <dt class="text-base font-medium text-gray-500 dark:text-gray-400">Status:
                                            </dt>
                                            <dd
                                                class="me-2 mt-1.5 inline-flex items-center rounded bg-yellow-100 px-2.5 py-0.5 text-xs font-medium text-yellow-800 dark:bg-yellow-900 dark:text-yellow-300">
                                                <svg class="me-1 h-3 w-3" aria-hidden="true"
                                                    xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                    fill="none" viewBox="0 0 24 24">
                                                    <path stroke="currentColor" stroke-linecap="round"
                                                        stroke-linejoin="round" stroke-width="2"
                                                        d="M13 7h6l2 4m-8-4v8m0-8V6a1 1 0 0 0-1-1H4a1 1 0 0 0-1 1v9h2m8 0H9m4 0h2m4 0h2v-4m0 0h-5m3.5 5.5a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0Zm-10 0a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0Z" />
                                                </svg>
                                                In transit
                                            </dd>
                                        </dl>

                                        <div
                                            class="w-full grid sm:grid-cols-2 lg:flex lg:w-64 lg:items-center lg:justify-end gap-4">
                                            <button type="button"
                                                class="w-full rounded-lg border border-red-700 px-3 py-2 text-center text-sm font-medium text-red-700 hover:bg-red-700 hover:text-white focus:outline-none focus:ring-4 focus:ring-red-300 dark:border-red-500 dark:text-red-500 dark:hover:bg-red-600 dark:hover:text-white dark:focus:ring-red-900 lg:w-auto">Cancel
                                                order</button>
                                            <a href="#"
                                                class="w-full inline-flex justify-center rounded-lg  border border-gray-200 bg-white px-3 py-2 text-sm font-medium text-gray-900 hover:bg-gray-100 hover:text-primary-700 focus:z-10 focus:outline-none focus:ring-4 focus:ring-gray-100 dark:border-gray-600 dark:bg-gray-800 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white dark:focus:ring-gray-700 lg:w-auto">View
                                                details</a>
                                        </div>
                                    </div>
                                </c:forEach>



                            </div>
                        </div>


                    </div>
                </div>
            </section>



            <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.0/flowbite.min.js"></script>
            <script src="static/js/explore.js"></script>
        </body>

        </html>