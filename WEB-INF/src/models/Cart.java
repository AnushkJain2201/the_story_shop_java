package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletContext;

public class Cart {
    private Integer cartId;
    private User user;
    private Book book;

    public static ServletContext appContext;
    public static String conURL;

    public Cart() {

    }

    public  static boolean clearCart(Integer userId) {
        boolean flag = false;
        try {
            Connection con = DriverManager.getConnection(conURL);

            String query = "delete from carts where user_id = ?";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, userId);

            int result = ps.executeUpdate();

            if (result > 0) {
                flag = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }

    public static ArrayList<Book> collectAllBooks(Integer userId) {
        ArrayList<Book> cartBooks = new ArrayList<>();
        try {
            Connection con = DriverManager.getConnection(conURL);

            String query = "select *, b.user_id as uid, u.email as uemail from carts as c inner join books as b inner join users as u where c.book_id = b.book_id and b.user_id = u.user_id and c.user_id =?";

            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, userId);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Book book = new Book();
                book.setBookId(rs.getInt("book_id"));
                book.setTitle(rs.getString("title"));
                book.setAuthor(rs.getString("author"));
                book.setGenre(Genre.findById(rs.getInt("genre_id")));
                book.setPrice(rs.getInt("price"));
                book.setAvailableCopies(rs.getInt("available_copies"));
                book.setBookImg(rs.getString("book_img"));
                User user = new User();
                user.setUserId(rs.getInt("uid"));
                user.setEmail(rs.getString("uemail"));
                book.setUser(user);

                cartBooks.add(book);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return cartBooks;
    }

    public static ArrayList<Integer> getBookIds(Integer userId) {
        ArrayList<Integer> bookIds = new ArrayList<>();
        try {
            Connection con = DriverManager.getConnection(conURL);

            String query = "select book_id from carts where user_id =?";

            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, userId);

            java.sql.ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                bookIds.add(rs.getInt("book_id"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bookIds;
    } 

    public static boolean insertBookIntoCart(Integer bookId, Integer userId) {
        boolean flag = false;
        try {
            Connection con = DriverManager.getConnection(conURL);

            String query = "insert into carts (user_id, book_id) values (?, ?)";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, userId);
            ps.setInt(2, bookId);
            int result = ps.executeUpdate();

            if (result == 1) {
                flag = true;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }

    public Integer getCartId() {
        return cartId;
    }
    public void setCartId(Integer cartId) {
        this.cartId = cartId;
    }
    public User getUser() {
        return user;
    }
    public void setUser(User user) {
        this.user = user;
    }
    public Book getBook() {
        return book;
    }
    public void setBook(Book book) {
        this.book = book;
    }

    
}
