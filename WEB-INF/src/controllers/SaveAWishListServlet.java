package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Book;
import models.User;
import models.Wishlist;

@WebServlet("/make_a_wishlist.do")
public class SaveAWishListServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer userId = Integer.parseInt(request.getParameter("user-id"));
        Integer bookId = Integer.parseInt(request.getParameter("book-id"));
        int likes = Integer.parseInt(request.getParameter("likes"))+ 1;

        Wishlist wishlist = new Wishlist(new User(userId), new Book(bookId));

        if(wishlist.saveAWishList()) {
            if(Book.increaseBookLikes(bookId, likes)) {
                request.getRequestDispatcher("explore.do").forward(request, response);
            }
        }
    }
}
