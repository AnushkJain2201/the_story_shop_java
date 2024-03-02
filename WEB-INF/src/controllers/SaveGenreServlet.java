package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.GenreFavourite;
import models.User;

@WebServlet("/save_genre.do")
public class SaveGenreServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");

        String[] genres = request.getParameterValues("genre");

        boolean flag = GenreFavourite.saveFavGenre(user.getUserId(), genres);

        response.getWriter().print(flag);
    }

    
}