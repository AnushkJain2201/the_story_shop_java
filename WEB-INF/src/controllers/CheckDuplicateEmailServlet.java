package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.User;

@WebServlet("/check_duplicate_email.do")
public class CheckDuplicateEmailServlet extends HttpServlet{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String enteredEmail = request.getParameter("enteredEmail");

        boolean flag = false;

        if(User.checkDuplicateEmail(enteredEmail)) {
            flag = true;
        }
        response.getWriter().print(flag);
    }
}
