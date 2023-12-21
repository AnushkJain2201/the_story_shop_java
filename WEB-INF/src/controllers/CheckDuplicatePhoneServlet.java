package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.User;

@WebServlet("/check_duplicate_phone.do")
public class CheckDuplicatePhoneServlet extends HttpServlet{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String enteredPhone = request.getParameter("enteredPhone");

        boolean flag = false;

        if(User.checkDuplicatePhone(enteredPhone)) {
            flag = true;
        }
        
        response.getWriter().print(flag);
    }
}
