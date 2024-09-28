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

@WebServlet("/explore.do")
public class ExplorePageServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();

        User user = (User) session.getAttribute("user");

        ArrayList<Book> rentalBooks = Book.collectRentalBooks();
        ArrayList<Book> saleBooks = Book.collectSaleBooks();


        if(user != null) {
            ArrayList<Integer> bookIds = Cart.getBookIds(user.getUserId());
            session.setAttribute("cartbookids", bookIds);
        }
        

        session.setAttribute("rentalbooks", rentalBooks);
        session.setAttribute("salebooks", saleBooks);

        

        request.getRequestDispatcher("explore.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        doGet(request, response);
    }
}
