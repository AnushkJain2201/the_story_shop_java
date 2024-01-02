package listeners;

import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import models.Country;
import models.Genre;
import models.Premium;
import utils.AppUtility;

public class AppListenerImpl implements ServletContextListener{

    public void contextInitialized(ServletContextEvent e) {
        ServletContext context = e.getServletContext();

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
    
}
