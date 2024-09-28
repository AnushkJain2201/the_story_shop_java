package controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.Order;
import models.User;

@WebServlet("/order.do")
public class SaleBookOrderServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get All the orders and show on the order.jsp page
        HttpSession session = request.getSession();

        User user = (User)session.getAttribute("user");

        System.out.println();

        ArrayList<Order> orders = Order.getOrders(user.getUserId());

        session.setAttribute("orders", orders);

        request.getRequestDispatcher("order.jsp").forward(request, response);
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

}
