package listeners;

import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import models.Country;
import models.Genre;

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
    }

    public void contextDestroyed(ServletContext e) {
        System.out.println("-____TSS DESTROYED____-");
    }
    
}
