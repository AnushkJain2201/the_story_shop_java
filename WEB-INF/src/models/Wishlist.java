package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletContext;

public class Wishlist {
    private Integer wishlistId;
    private User user;
    private Book book;

    public static ServletContext appContext;
    public static String conURL;

    public Wishlist() {

    }

    public Wishlist(User user, Book book) {
        this.user = user;
        this.book = book;
    }

    public Wishlist(Integer wishlistId, User user, Book book) {
        this.wishlistId = wishlistId;
        this.user = user;
        this.book = book;
    }

    public Integer getWishlistId() {
        return wishlistId;
    }

    public void setWishlistId(Integer wishlistId) {
        this.wishlistId = wishlistId;
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

    public static boolean isLikedByUser(int bookId, int userId) {
        boolean flag = false;
        try {
            Connection con = DriverManager.getConnection(conURL);

            String query = "select * from wishlists where user_id = ? and book_id = ?";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, userId);
            ps.setInt(2, bookId);
            
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                flag = true;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }

    public boolean removeAWishList() {
        boolean flag = false;
        try {
            Connection con = DriverManager.getConnection(conURL);

            String query = "delete from wishlists where user_id = ? and book_id = ?";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, user.getUserId());
            ps.setInt(2, book.getBookId());
            int result = ps.executeUpdate();

            if (result == 1) {
                flag = true;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }

    public boolean saveAWishList() {
        boolean flag = false;
        try {
            Connection con = DriverManager.getConnection(conURL);

            String query = "insert into wishlists (user_id, book_id) values (?, ?)";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, user.getUserId());
            ps.setInt(2, book.getBookId());
            int result = ps.executeUpdate();

            if (result == 1) {
                flag = true;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }

}
