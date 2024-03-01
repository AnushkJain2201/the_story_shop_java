package controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.Genre;
import models.GenreFavourite;
import models.User;

@WebServlet("/profile.do")
public class ProfileServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();

        User user = (User)session.getAttribute("user");

        GenreFavourite gf = null;

        String nextPage = "login.jsp";

        if(user != null)
            gf = new GenreFavourite(user);
            ArrayList<Genre> genreFavourite =  gf.collectFavGenre();

            request.setAttribute("userGenre", genreFavourite);

            nextPage = "profile.jsp";


        request.getRequestDispatcher(nextPage).forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        doGet(request, response);
    }
}
