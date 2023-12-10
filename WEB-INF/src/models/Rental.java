package models;

import java.util.Date;

public class Rental {
    private Integer rentalId;
    private User user;
    private Book book;
    private Date rentalDate;
    private Date returnDate;
    private Integer rentalFee;
    private Integer totalPaid;

    public Rental() {

    }

    public Rental(Integer rentalId, User user, Book book, Date rentalDate, Date returnDate, Integer rentalFee, Integer totalPaid) {
        this.rentalId = rentalId;
        this.user = user;
        this.book = book;
        this.rentalDate = rentalDate;
        this.returnDate = returnDate;
        this.rentalFee = rentalFee;
        this.totalPaid = totalPaid;
    }

    public Integer getRentalId() {
        return rentalId;
    }

    public void setRentalId(Integer rentalId) {
        this.rentalId = rentalId;
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

    public Date getRentalDate() {
        return rentalDate;
    }

    public void setRentalDate(Date rentalDate) {
        this.rentalDate = rentalDate;
    }

    public Date getReturnDate() {
        return returnDate;
    }

    public void setReturnDate(Date returnDate) {
        this.returnDate = returnDate;
    }

    public Integer getRentalFee() {
        return rentalFee;
    }

    public void setRentalFee(Integer rentalFee) {
        this.rentalFee = rentalFee;
    }

    public Integer getTotalPaid() {
        return totalPaid;
    }

    public void setTotalPaid(Integer totalPaid) {
        this.totalPaid = totalPaid;
    }

    
}
