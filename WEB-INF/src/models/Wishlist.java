package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import java.util.ArrayList;

public class Wishlist {
    private Integer wishlistId;
    private User user;
    private Book book;

    public static ServletContext appContext;
    public static String conURL;

    public Wishlist() {

    }

    public Wishlist(Integer wishlistId, Book book) {
        this.wishlistId = wishlistId;
        this.book = book;
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

    public static ArrayList<Wishlist> getAllWishlist(User user) {
        ArrayList<Wishlist> wishlists = new ArrayList<>();
        try {
            Connection con = DriverManager.getConnection(conURL);

            // WishList(wishlistId, book)
            
            // User(userId, name)

            String query = "select w.wishlist_id, w.book_id, b.title, b.author, g.genre_id, g.name, b.price, b.description, b.book_img, b.likes, b.user_id, u.name, u.email from wishlists as w inner join genres as g inner join books as b inner join users as u where b.genre_id = g.genre_id and u.user_id = b.user_id and w.book_id = b.book_id and w.user_id = ?";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, user.getUserId());

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Wishlist w = new Wishlist(rs.getInt(1), new Book(rs.getInt(2), rs.getString(3), rs.getString(4), new Genre(rs.getInt(5), rs.getString(6)), rs.getInt(7), rs.getString(8), rs.getString(9), rs.getInt(10), new User(rs.getInt(11), rs.getString(12), rs.getString(13))));

                wishlists.add(w);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } 
        return wishlists;
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
