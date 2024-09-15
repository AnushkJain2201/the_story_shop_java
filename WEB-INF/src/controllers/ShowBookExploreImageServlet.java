package controllers;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/show_explore_book_img.do")
public class ShowBookExploreImageServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String imgName = request.getParameter("path");
        String email = request.getParameter("email");

        ServletContext context = getServletContext();

        InputStream is = context.getResourceAsStream("/WEB-INF/uploads/" + email + "/books/" + imgName);

        OutputStream os = response.getOutputStream();

        byte[] pic = new byte[256];

        while (is.read(pic) != -1) {
            os.write(pic);
        }

        os.flush();
        os.close();
    }
}
