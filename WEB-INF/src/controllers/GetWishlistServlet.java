package controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.User;
import models.Wishlist;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/get_wishlists.do")
public class GetWishlistServlet extends HttpServlet{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        if(user != null) {
            ArrayList<Wishlist> list = Wishlist.getAllWishlist(user);
            request.setAttribute("wishlists", list);
            request.getRequestDispatcher("wishlists.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("explore.do").forward(request, response);
        }
    }
}
