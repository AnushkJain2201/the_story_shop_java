package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletContext;

public class Cart {
    private Integer cartId;
    private User user;
    private Book book;

    public static ServletContext appContext;
    public static String conURL;

    public Cart() {

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
