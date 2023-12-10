package models;

import java.util.Date;

public class PremiumStatus {
    private Integer premiumStatusId;
    private Premium premium;
    private User user;
    private Date purchaseDate;
    private Date endingDate;

    public PremiumStatus() {

    }

    public PremiumStatus(Integer premiumStatusId, Premium premium, User user, Date purchaseDate, Date endingDate) {
        this.premiumStatusId = premiumStatusId;
        this.premium = premium;
        this.user = user;
        this.purchaseDate = purchaseDate;
        this.endingDate = endingDate;
    }

    public Integer getPremiumStatusId() {
        return premiumStatusId;
    }

    public void setPremiumStatusId(Integer premiumStatusId) {
        this.premiumStatusId = premiumStatusId;
    }

    public Premium getPremium() {
        return premium;
    }

    public void setPremium(Premium premium) {
        this.premium = premium;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Date getPurchaseDate() {
        return purchaseDate;
    }

    public void setPurchaseDate(Date purchaseDate) {
        this.purchaseDate = purchaseDate;
    }

    public Date getEndingDate() {
        return endingDate;
    }

    public void setEndingDate(Date endingDate) {
        this.endingDate = endingDate;
    }

    
}
