package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.User;
import utils.AppUtility;
import utils.EmailSender;

@WebServlet("/password_recovery.do")
public class PasswordRecoveryServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        boolean flag = false;

        String registeredEmail = request.getParameter("email");
        String OTP = AppUtility.generateOTP();

        if(User.checkDuplicateEmail(registeredEmail)) {
            User user = new User(registeredEmail, OTP, 1);

            if(user.updateOTP()) {
                EmailSender.sendPasswordRecoveryEmail(registeredEmail, OTP);
                flag = true;
            }

            response.getWriter().print(flag);
        }
        else {
            response.getWriter().print(flag);
        }    



    }
    
}
