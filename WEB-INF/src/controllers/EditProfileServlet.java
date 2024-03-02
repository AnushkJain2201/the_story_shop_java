package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.User;

@WebServlet("/edit_profile.do")
public class EditProfileServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        // String bio = request.getParameter("bio");

        String nextPage = "profile.do";

        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");

        user.setName(name);
        user.setPhone(phone);
        // user.setBio(bio);

        if(!user.editProfile()) {
            request.setAttribute("updateErr", "Some Error Occurred !!");
        }
        else {
            session.setAttribute("user", user);
        }

        request.getRequestDispatcher(nextPage).forward(request, response);
    }
}