package controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.Book;
import models.Cart;
import models.Order;
import models.OrderItem;
import models.User;

@WebServlet("/sale_book_payment.do")
public class SaleBookPaymentServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        Float total = Float.parseFloat(request.getParameter("total"));
        session.setAttribute("total", total);

        request.getRequestDispatcher("order_payment.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        User user = (User) session.getAttribute("user");

        Float totalV = (Float) session.getAttribute("total");

        int total = totalV.intValue();

        ArrayList<Book> books = Cart.collectAllBooks(user.getUserId());

        Integer quantity = books.size();

        Order order = new Order();

        order.setUser(user);
        order.setTotalAmount(total);
        order.setOrderQuantity(quantity);

        Integer orderId = order.saveOrder();
        order.setOrderId(orderId);

        if (orderId != null) {
            boolean flag = false;
            for (Book book : books) {
                OrderItem orderItem = new OrderItem();
                orderItem.setOrder(order);
                orderItem.setBook(book);
                orderItem.setQuantity(1);
                orderItem.setSubtotal(book.getPrice());

                flag = orderItem.saveOrderItem();

            }

            if(flag) {
                if (Cart.clearCart(user.getUserId())) {
                    request.getRequestDispatcher("order.do").forward(request, response);
                }
                
            }

            
        }

    }
}
