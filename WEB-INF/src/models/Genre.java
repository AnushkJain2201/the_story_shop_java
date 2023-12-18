package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Genre {
    private Integer genreId;
    private String name;

    public Genre() {

    }

    public Genre(Integer genreId, String name) {
        this.genreId = genreId;
        this.name = name;
    }

    public static ArrayList<Genre> collectAllGenres() {
        ArrayList<Genre> genres = new ArrayList<>();

        try {
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tss?user=root&password=1234");

            String query = "select * from genres";

            PreparedStatement ps = con.prepareStatement(query);

            ResultSet rs = ps.executeQuery();

            while(rs.next()) {
                genres.add(new Genre(rs.getInt(1), rs.getString(2)));
            }

            con.close();
        } catch(SQLException e) {
            e.printStackTrace();
        }

        return genres;
    }

    public Integer getGenreId() {
        return genreId;
    }

    public String getName() {
        return name;
    }

    public void setCountryId(Integer genreId) {
        this.genreId = genreId;
    }

    public void setName(String name) {
        this.name = name;
    }
}
