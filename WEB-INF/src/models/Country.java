package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletContext;

public class Country {
    private Integer countryId;
    private String name;

    public static ServletContext appContext;
    public static String conURL;

    public Country() {

    }

    public Country(Integer countryId) {
        this.countryId = countryId;
    }

     public Country(Integer countryId, String name) {
        this.countryId = countryId;
        this.name = name;
    }

    // Static method to collect all the countries for the database
    public static ArrayList<Country> collectAllCountries() {
        ArrayList<Country> countries = new ArrayList<>();

        try {
            Connection con = DriverManager.getConnection(conURL);

            String query = "select * from countries";

            PreparedStatement ps = con.prepareStatement(query);

            ResultSet rs = ps.executeQuery();

            while(rs.next()) {
                countries.add(new Country(rs.getInt(1), rs.getString(2)));
            }

            con.close();
        } catch(SQLException e) {
            e.printStackTrace();
        }

        return countries;
    }

    public Integer getCountryId() {
        return countryId;
    }

    public String getName() {
        return name;
    }

    public void setCountryId(Integer countryId) {
        this.countryId = countryId;
    }

    public void setName(String name) {
        this.name = name;
    }
    
}