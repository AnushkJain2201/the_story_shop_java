package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.PremiumStatus;
import models.User;

@WebServlet("/premium.do")
public class PremiumsServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();

        User user = (User) session.getAttribute("user");
        if (user != null) {
            if (user.getHasPremium()) {
                PremiumStatus premiumStatus = PremiumStatus.getPremiumStatus(user);
                request.setAttribute("user-has-premium", premiumStatus);
            }
        }

        request.getRequestDispatcher("premium.jsp").forward(request, response);
    }
}
