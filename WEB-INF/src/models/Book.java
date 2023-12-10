package models;

import java.util.Date;

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

    public Book() {

    }

    public Book(Integer bookId, String title, String author, Genre genre, Integer price, Integer availableCopies, Integer totalCopies, Date publishDate, String description, Date date, User user, String bookImg, Integer likes) {
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

}
