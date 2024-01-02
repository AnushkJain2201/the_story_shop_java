package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Premium {
    private Integer premiumId;
    private String name;
    private Integer price;
    private Integer timePeriod;
    private String description;

    public Premium() {

    }

    public Premium(Integer premiumId, String name, Integer price, Integer timePeriod, String description) {

        this.premiumId = premiumId;
        this.name = name;
        this.price = price;
        this.timePeriod = timePeriod;
        this.description = description;
    }

    public static ArrayList<Premium> collectAllPremiums() {
        ArrayList<Premium> premiums = new ArrayList<>();
        
        try {
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tss?user=root&password=1234");

            String query = "select * from premiums";

            PreparedStatement ps = con.prepareStatement(query);

            ResultSet rs = ps.executeQuery();

            while(rs.next()) {
                premiums.add(new Premium(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getString(5)));
            }

            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return premiums;
    }

    public Integer getPremiumId() {
        return premiumId;
    }

    public void setPremiumId(Integer premiumId) {
        this.premiumId = premiumId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public Integer getTimePeriod() {
        return timePeriod;
    }

    public void setTimePeriod(Integer timePeriod) {
        this.timePeriod = timePeriod;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    } 

}
