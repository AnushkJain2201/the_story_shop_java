package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.User;
import models.Country;
import models.Status;

import utils.AppUtility;

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
            nextPage = "getting_started.jsp";
        }
        else {
            
            // Save details of user in the database
            String name = request.getParameter("fullname");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            int countryId = Integer.parseInt(request.getParameter("country"));
            String phone = request.getParameter("phone");

            String OTP = AppUtility.generateOTP();

            User user = new User(name, email, password, new Country(countryId), phone, OTP);
            user.setStatus(new Status(2));

            if(user.signUpUser()) {
                nextPage = "verify_email.jsp";
            }
        }
        response.sendRedirect(nextPage);
    }
}