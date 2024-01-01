package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.User;
import models.Country;
import models.Status;

import utils.AppUtility;
import utils.EmailSender;

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
        HttpSession session = request.getSession();
        Boolean login = Boolean.parseBoolean(request.getParameter("login"));
        
        if(login) {
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            User user = new User(email, password);

            int statusId = user.login();

            String nextPage = "login.jsp";
            boolean flag = false;

            switch(statusId) {
                case -1:
                    request.setAttribute("loginErr", "Incorrect Password!");
                    break;
                case 0:
                    request.setAttribute("loginErr", "Account With The Provided Email Do Not Exist!");
                    break;
                case 1:
                    //------ Plan After Login Page
                    session.setAttribute("user", user);
                    nextPage = "explore.do";
                    flag = true;
                    break;
                case 2:
                    request.setAttribute("loginErr", "Your Account Is Unverified!!");
                    break;
                case 3:
                    request.setAttribute("loginErr", "Sorry! Your Account is Blocked!!");
                    break;
            }

            if(flag) {
                response.sendRedirect(nextPage);
            }
            else {
                request.getRequestDispatcher(nextPage).forward(request, response);
            }
            
        }
        else {
            String nextPage = "getting_started.jsp";
            
            String responseToken = request.getParameter("g-recaptcha-response");
            String recaptchaURL = "https://www.google.com/recaptcha/api/siteverify";
            String secretKey = "6LeRqjopAAAAANqCZUXarra-blRVbSEkuQMu3s0n";

            // Checking for recaptcha response
            Boolean flag = AppUtility.checkRecaptchaResponse(recaptchaURL, secretKey, responseToken);

            if(flag) {
                // Save details of user in the database
                String name = request.getParameter("fullname");
                String email = request.getParameter("email");
                String password = request.getParameter("password");
                int countryId = Integer.parseInt(request.getParameter("country"));
                String phone = request.getParameter("phone");
                boolean userType = request.getParameter("is-author").equals("0") ? false : true;

                String OTP = AppUtility.generateOTP();

                User user = new User(name, email, password, new Country(countryId), phone, OTP, userType);
                user.setStatus(new Status(2));

                if(user.signUpUser()) {
                    EmailSender.sendAccVerificationMail(email, OTP);
                    session.setAttribute("user", user);

                    nextPage = "verify_email.jsp";
                }

            } else {
                request.setAttribute("captchaUncheckErr", "Please Check The Captcha");
            }
           
            request.getRequestDispatcher(nextPage).forward(request, response);
        }
    }
}