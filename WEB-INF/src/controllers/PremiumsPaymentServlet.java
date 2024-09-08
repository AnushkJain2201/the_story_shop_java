package controllers;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.Premium;
import models.PremiumStatus;
import models.User;

// String testDate = "29-Apr-2010,13:00:14 PM";
// DateFormat formatter = new SimpleDateFormat("d-MMM-yyyy,HH:mm:ss aaa");
// Date date = formatter.parse(testDate);

@WebServlet("/payment_premiums.do")
public class PremiumsPaymentServlet extends HttpServlet{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        int id =Integer.parseInt( request.getParameter("premium-id"));

        HttpSession session = request.getSession();
        session.setAttribute("premiums_id", id);

        request.getRequestDispatcher("premium_payment.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();

        User user = (User)(session.getAttribute("user"));
        user.setHasPremium(true);

        Integer premiumId = Integer.parseInt(request.getParameter("premium_id_in"));
        String premiumName = request.getParameter("premium_name_in");
        Premium premium = new Premium(premiumId, premiumName);


        String onCardName = request.getParameter("on-card-name");
        String cardNumber = request.getParameter("card-number");
        String cardExpireAt = request.getParameter("card-expire-at");
        String cvv = request.getParameter("cvv");

        PremiumStatus premiumStatus = new PremiumStatus(user, premium, onCardName, cardNumber, cardExpireAt, cvv);

        if(user.updateHasPremiumStatus()) {
            if(premiumStatus.savePremiumStatus()) {
                session.setAttribute("userPremiumStatus", premiumStatus);
                String completed = "yes";
                request.setAttribute("alert", completed);
                request.getRequestDispatcher("profile.do").forward(request, response);
            }
        }

        

        
    }
}
