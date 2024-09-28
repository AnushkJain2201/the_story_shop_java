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
import models.User;

@WebServlet("/show_cart.do")
public class ShowCartServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        System.out.println("inside cart .do");

        User user = (User)session.getAttribute("user");

        if(user == null) {
            response.sendRedirect("login.do");
            return;
        }

        ArrayList<Book> cartBooks =  Cart.collectAllBooks(user.getUserId());

        for(Book book : cartBooks) {
            System.out.println(book.getTitle());
        }

        session.setAttribute("cartbooks", cartBooks);

        request.getRequestDispatcher("cart.jsp").forward(request, response);
    }
}
