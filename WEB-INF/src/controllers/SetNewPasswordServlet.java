package controllers;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.User;

@WebServlet("/set_new_password.do")
public class SetNewPasswordServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServerException {
        boolean flag = false;

        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("password_reset_email"); 

        String newPassword = request.getParameter("new_password");
        user.setPassword(newPassword);

        if(user.updatePassword()) {
            flag = true;
            response.getWriter().print(flag);
        }
        else {
            response.getWriter().print(flag);
        }
    }
}
