package listeners;

import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import models.Admin;
import models.Book;
import models.Cart;
import models.Country;
import models.Genre;
import models.GenreFavourite;
import models.Order;
import models.OrderItem;
import models.Premium;
import models.PremiumStatus;
import models.Rental;
import models.Status;
import models.User;
import models.Wishlist;
import utils.AppUtility;

public class AppListenerImpl implements ServletContextListener{

    public void contextInitialized(ServletContextEvent e) {
        ServletContext context = e.getServletContext();

        String host = context.getInitParameter("host");
        String unmSql = context.getInitParameter("unmSql");
        String pwdSql = context.getInitParameter("pwdSql");
        String dbName = context.getInitParameter("dbName");
        String port = context.getInitParameter("port");

        String conURL = "jdbc:mysql://" + host + ":" + port + "/" + dbName + "?user=" + unmSql + "&password=" + pwdSql;

        Admin.appContext = context;
        Admin.conURL = conURL;

        Book.appContext = context;
        Book.conURL = conURL;

        Country.appContext = context;
        Country.conURL = conURL;

        Genre.appContext = context;
        Genre.conURL = conURL;

        GenreFavourite.appContext = context;
        GenreFavourite.conURL = conURL;

        Order.appContext = context;
        Order.conURL = conURL;

        OrderItem.appContext = context;
        OrderItem.conURL = conURL;

        Premium.appContext = context;
        Premium.conURL = conURL;

        PremiumStatus.appContext = context;
        PremiumStatus.conURL = conURL;

        Rental.appContext = context;
        Rental.conURL = conURL;

        Status.appContext = context;
        Status.conURL = conURL;

        User.appContext = context;
        User.conURL = conURL;

        Wishlist.appContext = context;
        Wishlist.conURL = conURL;

        Cart.appContext = context;
        Cart.conURL = conURL;

        System.out.println("-____TSS STARTING____-");

        // Loading the driver class only once on intialization
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch(ClassNotFoundException x) {
            x.printStackTrace();
        }
        System.out.println("-____Driver Class Loaded____-");

        // Countries collected and added as attribute in the context scope
        ArrayList<Country> countries = Country.collectAllCountries();
        context.setAttribute("countries", countries);
        System.out.println("-____Countries Collected____-");

        // Genres collected and added as attribute in context scope
        ArrayList<Genre> genres = Genre.collectAllGenres();
        context.setAttribute("genres", genres);
        System.out.println("-____Genres Collected____-");

        // Premiums collected and added as attribute in context scope
        ArrayList<Premium> premiums = Premium.collectAllPremiums();
        context.setAttribute("premiums", premiums);
        System.out.println("-____Premiums Collected____-");

        // Initializing from email and from email password at AppUtility
        AppUtility.appContext = context;

        AppUtility.fromEmail = context.getInitParameter("from_email");
        AppUtility.fromEmailPassword = context.getInitParameter("from_email_password");

        System.out.println("-____Values Initialized____-");
    }

    public void contextDestroyed(ServletContext e) {
        System.out.println("-____TSS DESTROYED____-");
    }

    @Override
    public void contextDestroyed(ServletContextEvent arg0) {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'contextDestroyed'");
    }
    
}
