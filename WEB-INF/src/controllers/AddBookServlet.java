package controllers;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import models.Book;
import models.Genre;
import models.User;

@WebServlet("/add_book.do")
public class AddBookServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();

        User user = (User)session.getAttribute("user");

        Book book = new Book();

        if(ServletFileUpload.isMultipartContent(request)) {
            ServletContext context = getServletContext();

            try{
                List<FileItem> list = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
                
                String uploadPath = context.getRealPath("/WEB-INF/uploads/" + user.getEmail() + "/books");

                
                System.out.println(user.getUserType());
                for(FileItem item : list) {
                    if(item.isFormField()) {
                        String fieldName = item.getFieldName();
                        System.out.println(fieldName + " : " + item.getString());

                        if(fieldName.equals("title")) {
                            book.setTitle(item.getString());
                        } else if(fieldName.equals("price")) {
                            book.setPrice(Integer.parseInt(item.getString()));
                        } else if(fieldName.equals("description")) {
                            book.setDescription(item.getString());
                        } else if(fieldName.equals("author")) {
                            book.setAuthor(item.getString());
                        } else if(fieldName.equals("available-copies")) {
                            book.setAvailableCopies(Integer.parseInt(item.getString()));
                        } else if(fieldName.equals("publish-date")) {
                            String pbd = item.getString();

                            // Date start = new Date();
                            // java.sql.Date sd = new java.sql.Date(start.getTime());

                            Date pubD = null;
                            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                            try {
                                pubD = dateFormat.parse(pbd);
                            } catch(Exception e) {
                                e.printStackTrace();
                            }

                            java.sql.Date obj = new java.sql.Date(pubD.getTime());

                            book.setPublishDate(obj);
                        } else if(fieldName.equals("genre")) {
                            book.setGenre(new Genre(Integer.parseInt(item.getString())));
                        }
                    } else {
                        File file = new File(uploadPath, item.getName());

                        try{
                            item.write(file);
                            book.setBookImg(item.getName());
                        } catch(Exception e) {
                            e.printStackTrace();
                        }
                    }
                }
            } catch(FileUploadException e) {
                e.printStackTrace();
            }

            book.setUser(user);

            if(user.getUserType()) {
                book.setAuthor(user.getName());
                if(book.saveOnSaleBook()) {
                    int currentBook = user.getBookAdded();
                    currentBook += 1;
                    user.setBookAdded(currentBook);
                    if(user.increaseBookCount()) {
                        session.setAttribute("user", user);
                    }
                }
            } else {
                if(book.saveOnRentBook()) {
                    int currentBook = user.getBookAdded();
                    currentBook += 1;
                    user.setBookAdded(currentBook);
                    if(user.increaseBookCount()) {
                        session.setAttribute("user", user);
                    }
                }
            }


        }

        request.getRequestDispatcher("/profile.do").forward(request, response);
    }
}
