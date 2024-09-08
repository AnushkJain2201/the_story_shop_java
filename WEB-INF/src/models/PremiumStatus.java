package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.ServletContext;

public class PremiumStatus {
    private Integer premiumStatusId;
    private Premium premium;
    private User user;
    private Date purchasedAt;
    private Date expiresAt;
    private String onCardName;
    private String cardNumber;
    private String cardExpiresAt;
    private String cvv;

    public static ServletContext appContext;
    public static String conURL;

    public PremiumStatus() {

    }
    
    // PremiumStatus premiumStatus = new PremiumStatus(user, premium, onCardName, cardNumber, cardExpireAt, cvv);

    public PremiumStatus(User user, Premium premium, String oncardName, String cardNumber, String cardExpiresAt, String cvv) {
        this.user = user;
        this.premium = premium;
        this.onCardName = oncardName;
        this.cardNumber = cardNumber;
        this.cardExpiresAt = cardExpiresAt;
        this.cvv = cvv;
    }

    public PremiumStatus(Integer premiumStatusId, Premium premium, User user, Date purchasedAt, Date expiresAt,
            String onCardName, String cardNumber, String cardExpiresAt, String cvv) {
        this.premiumStatusId = premiumStatusId;
        this.premium = premium;
        this.user = user;
        this.purchasedAt = purchasedAt;
        this.expiresAt = expiresAt;
        this.onCardName = onCardName;
        this.cardNumber = cardNumber;
        this.cardExpiresAt = cardExpiresAt;
        this.cvv = cvv;
    }

    public boolean savePremiumStatus() {
        boolean flag = false;

        try {
            Connection con = DriverManager.getConnection(conURL);

            String query = "insert into premium_status (premium_id, user_id, on_card_name, card_number, card_expire_at, cvv) values (?, ?, ?, ?, ?, ?)";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, premium.getPremiumId());
            ps.setInt(2, user.getUserId());
            ps.setString(3, onCardName);
            ps.setString(4, cardNumber);
            ps.setString(5, cardExpiresAt);
            ps.setString(6, cvv);

            int result = ps.executeUpdate();

            if(result == 1) {
                flag = true;
            }

        } catch(SQLException e) {
            e.printStackTrace();
        }

        return flag;
    }

    public static PremiumStatus getPremiumStatus(User user) {

        PremiumStatus premiumStatus = null;
        System.out.println(user.getUserId() + "==============================");
        try {
            Connection con = DriverManager.getConnection(conURL);


            String query = "select ps.premium_id, p.name, on_card_name, card_number, card_expire_at, cvv from premium_status as ps inner join premiums as p where user_id = ? and ps.premium_id = p.premium_id";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, user.getUserId());

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                premiumStatus = new PremiumStatus(user, new Premium(rs.getInt(1), rs.getString(2)), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
            }

        } catch(SQLException e) {
            e.printStackTrace();
        }

        return premiumStatus;
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

    public Date getPurchasedAt() {
        return purchasedAt;
    }

    public void setPurchasedAt(Date purchasedAt) {
        this.purchasedAt = purchasedAt;
    }

    public Date getExpiresAt() {
        return expiresAt;
    }

    public void setExpiresAt(Date expiresAt) {
        this.expiresAt = expiresAt;
    }

    public String getOnCardName() {
        return onCardName;
    }

    public void setOnCardName(String onCardName) {
        this.onCardName = onCardName;
    }

    public String getCardNumber() {
        return cardNumber;
    }

    public void setCardNumber(String cardNumber) {
        this.cardNumber = cardNumber;
    }

    public String getCardExpiresAt() {
        return cardExpiresAt;
    }

    public void setCardExpiresAt(String cardExpiresAt) {
        this.cardExpiresAt = cardExpiresAt;
    }

    public String getCvv() {
        return cvv;
    }

    public void setCvv(String cvv) {
        this.cvv = cvv;
    }

}
