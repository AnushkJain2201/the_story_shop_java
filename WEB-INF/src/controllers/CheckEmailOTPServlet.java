package controllers;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.User;

@WebServlet("/verify_email.do")
public class CheckEmailOTPServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();

        User user = (User)session.getAttribute("user");

        String nextPage = "verify_email.jsp";

        String  code1 = request.getParameter("code-1");
        String  code2 = request.getParameter("code-2");
        String  code3 = request.getParameter("code-3");
        String  code4 = request.getParameter("code-4");
        String  code5 = request.getParameter("code-5");
        String  code6 = request.getParameter("code-6");

        int finalOTP = Integer.parseInt((code1 + code2 + code3 + code4 + code5 + code6));

        if(user.verifyEmail(finalOTP)) {

            String uploadLocation = getServletContext().getRealPath("/WEB-INF/uploads");

            File userFolder = new File(uploadLocation, user.getEmail());
            userFolder.mkdir();

            String profileUploadLocation = getServletContext().getRealPath("/WEB-INF/uploads/" + user.getEmail());

            File profileFolder = new File(profileUploadLocation, "profile_pics");
            profileFolder.mkdir();

            nextPage = "login.jsp";
        }
        else {
            request.setAttribute("emailVerErr", "Wrong OTP!!");
        }
        
        request.getRequestDispatcher(nextPage).forward(request, response);
    }
    
}
