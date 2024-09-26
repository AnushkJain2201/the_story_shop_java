package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.Cart;
import models.User;

@WebServlet("/add_book_to_cart")
public class AddBookToCartServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("Hello");
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");

        Integer bookId = Integer.parseInt(request.getParameter("book_id"));
        System.out.println(bookId);

        boolean flag = false;

        // Add book to cart using bookId and userId
        if(Cart.insertBookIntoCart(bookId, user.getUserId())) {
            flag = true;
        }

        response.getWriter().print(flag);
    }
}
