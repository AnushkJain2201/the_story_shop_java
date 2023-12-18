package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/getting_started.do")
public class GettingStartedServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        Boolean login = Boolean.parseBoolean(request.getParameter("login"));

        String nextPage = "getting_started.jsp";
        if(login) {
            nextPage = "login.jsp";
        }

        request.getRequestDispatcher(nextPage).forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        Boolean login = Boolean.parseBoolean(request.getParameter("login"));

        String nextPage = "verify_email.jsp";
        
        if(login) {

            // Match the password in the database
            nextPage = "profile.jsp";
        }
        else {
            
            // Save details of user in the database
        }
        response.sendRedirect(nextPage);
    }
}