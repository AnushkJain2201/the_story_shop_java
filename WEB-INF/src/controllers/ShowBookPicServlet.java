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
import javax.servlet.http.HttpSession;

import models.User;

@WebServlet("/show_book_image.do")
public class ShowBookPicServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");

        String imgName = request.getParameter("book-path");

        ServletContext context = getServletContext();

        InputStream is = context.getResourceAsStream("/WEB-INF/uploads/" + user.getEmail() + "/books/" + imgName);

        OutputStream os = response.getOutputStream();

        byte[] pic = new byte[256];

        while(is.read(pic) != -1) {
            os.write(pic);
        }

        os.flush();
        os.close();
    }
}
