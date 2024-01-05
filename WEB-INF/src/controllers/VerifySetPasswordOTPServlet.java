package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.User;

@WebServlet("/verify_reset_password_OTP.do")
public class VerifySetPasswordOTPServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
        boolean flag = false;
        User user = (User)session.getAttribute("password_reset_email");

        String  code1 = request.getParameter("code1");
        String  code2 = request.getParameter("code2");
        String  code3 = request.getParameter("code3");
        String  code4 = request.getParameter("code4");
        String  code5 = request.getParameter("code5");
        String  code6 = request.getParameter("code6");

        int finalOTP = Integer.parseInt((code1 + code2 + code3 + code4 + code5 + code6));

        if(user.verifyEmail(finalOTP)) {
            flag = true;
            response.getWriter().print(flag);
        }
        else {
            response.getWriter().print(flag);
        }
    }
    
}
