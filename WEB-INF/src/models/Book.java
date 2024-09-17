package models;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletContext;

public class Book {
    private Integer bookId;
    private String title;
    private String author;
    private Genre genre;
    private Integer price;
    private Integer availableCopies;
    private Integer totalCopies;
    private Date publishDate;
    private String description;
    private Date date;
    private User user;
    private String bookImg;
    private Integer likes;

    public static ServletContext appContext;
    public static String conURL;

    public Book() {

    }

    public Book(Integer bookId) {
        this.bookId = bookId;
    }

    // Book(bookId, title, author, new Genre(genreId, name), price, description, new
    // User(userId, name, email), bookImg, likes)

    public Book(Integer bookId, String title, String author, Genre genre, Integer price, String description, User user,
            String bookImg, Integer likes) {
        this.bookId = bookId;
        this.title = title;
        this.author = author;
        this.genre = genre;
        this.price = price;
        this.description = description;
        this.user = user;
        this.bookImg = bookImg;
        this.likes = likes;
    }

    public Book(Integer bookId, String title, String author, Genre genre, Integer price, Integer availableCopies,
            Date publishDate, String description, User user, String bookImg, Integer likes) {
        this.bookId = bookId;
        this.title = title;
        this.author = author;
        this.genre = genre;
        this.price = price;
        this.availableCopies = availableCopies;
        this.publishDate = publishDate;
        this.description = description;
        this.user = user;
        this.bookImg = bookImg;
        this.likes = likes;
    }

    public Book(Integer bookId, String title, String author, Genre genre, Integer price, Integer availableCopies,
            Date publishDate, String description, User user, String bookImg) {
        this.bookId = bookId;
        this.title = title;
        this.author = author;
        this.genre = genre;
        this.price = price;
        this.availableCopies = availableCopies;
        this.publishDate = publishDate;
        this.description = description;
        this.user = user;
        this.bookImg = bookImg;
    }

    public Book(Integer bookId, String title, String author, Genre genre, Integer price, Integer availableCopies,
            Integer totalCopies, Date publishDate, String description, Date date, User user, String bookImg,
            Integer likes) {
        this.bookId = bookId;
        this.title = title;
        this.author = author;
        this.genre = genre;
        this.price = price;
        this.availableCopies = availableCopies;
        this.totalCopies = totalCopies;
        this.publishDate = publishDate;
        this.description = description;
        this.date = date;
        this.user = user;
        this.bookImg = bookImg;
        this.likes = likes;
    }

    public Integer getBookId() {
        return bookId;
    }

    public void setBookId(Integer bookId) {
        this.bookId = bookId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Genre getGenre() {
        return genre;
    }

    public void setGenre(Genre genre) {
        this.genre = genre;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public Integer getAvailableCopies() {
        return availableCopies;
    }

    public void setAvailableCopies(Integer availableCopies) {
        this.availableCopies = availableCopies;
    }

    public Integer getTotalCopies() {
        return totalCopies;
    }

    public void setTotalCopies(Integer totalCopies) {
        this.totalCopies = totalCopies;
    }

    public Date getPublishDate() {
        return publishDate;
    }

    public void setPublishDate(Date publishDate) {
        this.publishDate = publishDate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getBookImg() {
        return bookImg;
    }

    public void setBookImg(String bookImg) {
        this.bookImg = bookImg;
    }

    public Integer getLikes() {
        return likes;
    }

    public void setLikes(Integer likes) {
        this.likes = likes;
    }

    public static ArrayList<Book> collectSaleBooks() {
        ArrayList<Book> saleBooks = new ArrayList<>();

        try {
            Connection con = DriverManager.getConnection(conURL);

            String query = "select book_id, title, author, b.genre_id, g.name, price, available_copies, publish_date, description, b.user_id, book_img, likes, u.name, email from books as b inner join users as u inner join genres as g where u.user_id=b.user_id and b.genre_id=g.genre_id and u.user_type=1 and available_copies > 0";

            PreparedStatement ps = con.prepareStatement(query);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Book book = new Book(rs.getInt(1), rs.getString(2), rs.getString(3),
                        new Genre(rs.getInt(4), rs.getString(5)), rs.getInt(6), rs.getInt(7), rs.getDate(8),
                        rs.getString(9), new User(rs.getInt(10), rs.getString(13), rs.getString(14)), rs.getString(11),
                        rs.getInt(12));

                saleBooks.add(book);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return saleBooks;
    }

    public static boolean decreaseBookLikes(int bookId, int likes) {
        boolean flag = false;

        try {
            Connection con = DriverManager.getConnection(conURL);

            String query = "update books set likes = ? where book_id = ?";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, likes);
            ps.setInt(2, bookId);

            int result = ps.executeUpdate();
            System.out.println("yaha andar tak aa taha hu");

            if (result == 1) {
                flag = true;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return flag;
    }

    public static boolean increaseBookLikes(int bookId, int likes) {
        boolean flag = false;

        try {
            Connection con = DriverManager.getConnection(conURL);

            String query = "update books set likes = ? where book_id = ?";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, likes);
            ps.setInt(2, bookId);

            int result = ps.executeUpdate();
            System.out.println("yaha andar tak aa taha hu");

            if (result == 1) {
                flag = true;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return flag;
    }

    public static ArrayList<Book> collectRentalBooks() {
        ArrayList<Book> rentalBooks = new ArrayList<>();

        // Book(bookId, title, author, new Genre(genreId, name), price, description, new
        // User(userId, name, email), bookImg, likes)

        try {
            Connection con = DriverManager.getConnection(conURL);

            String query = "select book_id, title, author, b.genre_id, g.name, price, description, b.user_id, book_img, likes, u.name, email from books as b inner join users as u inner join genres as g where u.user_id=b.user_id and b.genre_id=g.genre_id and u.user_type=0";

            PreparedStatement ps = con.prepareStatement(query);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Book book = new Book(rs.getInt(1), rs.getString(2), rs.getString(3),
                        new Genre(rs.getInt(4), rs.getString(5)), rs.getInt(6), rs.getString(7),
                        new User(rs.getInt(8), rs.getString(11), rs.getString(12)), rs.getString(9), rs.getInt(10));

                rentalBooks.add(book);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return rentalBooks;
    }

    public static ArrayList<Book> getAllBooks(User user) {
        ArrayList<Book> books = new ArrayList<>();

        try {
            Connection con = DriverManager.getConnection(conURL);

            String query = "select book_id, title, author, b.genre_id, g.name, price, available_copies, publish_date, description, book_img from books as b inner join genres as g where b.genre_id=g.genre_id and user_id=?";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, user.getUserId());

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Book book = new Book(rs.getInt(1), rs.getString(2), rs.getString(3),
                        new Genre(rs.getInt(4), rs.getString(5)), rs.getInt(6), rs.getInt(7), rs.getDate(8),
                        rs.getString(9), user, rs.getString(10));

                books.add(book);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return books;
    }

    public boolean saveOnSaleBook() {
        boolean flag = false;

        try {
            Connection con = DriverManager.getConnection(conURL);

            String query = "insert into books (title, author, genre_id, price, available_copies, publish_date, description, user_id, book_img) values (?, ?, ?, ?, ?, ?, ?, ?, ?)";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, title);
            ps.setString(2, author);
            ps.setInt(3, genre.getGenreId());
            ps.setInt(4, price);
            ps.setInt(5, availableCopies);
            ps.setDate(6, publishDate);
            ps.setString(7, description);
            ps.setInt(8, user.getUserId());
            ps.setString(9, bookImg);

            int result = ps.executeUpdate();

            if (result == 1) {
                flag = true;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return flag;
    }

    public boolean saveOnRentBook() {
        boolean flag = false;

        try {
            Connection con = DriverManager.getConnection(conURL);

            String query = "insert into books (title, author, genre_id, price, description, user_id, book_img) values (?, ?, ?, ?, ?, ?, ?)";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, title);
            ps.setString(2, author);
            ps.setInt(3, genre.getGenreId());
            ps.setInt(4, price);
            ps.setString(5, description);
            ps.setInt(6, user.getUserId());
            ps.setString(7, bookImg);

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
