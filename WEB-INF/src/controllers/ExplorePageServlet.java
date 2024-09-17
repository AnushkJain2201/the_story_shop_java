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

@WebServlet("/explore.do")
public class ExplorePageServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();

        ArrayList<Book> rentalBooks = Book.collectRentalBooks();
        ArrayList<Book> saleBooks = Book.collectSaleBooks();

        session.setAttribute("rentalbooks", rentalBooks);
        session.setAttribute("salebooks", saleBooks);

        request.getRequestDispatcher("explore.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        doGet(request, response);
    }
}
