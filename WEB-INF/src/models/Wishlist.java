package models;

public class Wishlist {
    private Integer wishlistId;
    private User user;
    private Book book;

    public Wishlist() {

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

    
}
