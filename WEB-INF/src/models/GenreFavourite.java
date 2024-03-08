package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class GenreFavourite {
    private Integer genreFavouriteId;
    private Genre genre;
    private User user;

    public GenreFavourite() {

    }

    public GenreFavourite(Integer genreFavouriteId, Genre genre, User user) {
        this.genreFavouriteId = genreFavouriteId;
        this.genre = genre;
        this.user = user;
    }

    public GenreFavourite(User user) {
        this.user = user;
    }

    public static boolean editFavGenre(Integer userId, String[] genres) {
        boolean flag = false;

        String query = "Delete from genre_favourites where (user_id, genre_id) in (";
        for(String genre: genres) {
            query = query + "(" + userId + "," + genre + ")," ;
        }

        query = query.substring(0, query.length() - 1);
        query = query + ")";

        System.out.print(query);

        try {
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tss?user=root&password=1234");

            PreparedStatement ps = con.prepareStatement(query);
            
            int result = ps.executeUpdate();

            if(result >= 1) {
                flag = true;
            }

        } catch(SQLException e) {
            e.printStackTrace();
        }
        
        return flag;
    }

    public static boolean saveFavGenre(Integer userId, String[] genres) {
        boolean flag = false;

        String query = "insert into genre_favourites (user_id, genre_id) values ";
        for(String genre: genres) {
            query = query + "(" + userId + "," + genre + ")," ;
        }

        query = query.substring(0, query.length() - 1);

        try {
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tss?user=root&password=1234");

            PreparedStatement ps = con.prepareStatement(query);
            
            int result = ps.executeUpdate();

            if(result >= 1) {
                flag = true;
            }

        } catch(SQLException e) {
            e.printStackTrace();
        }
        
        return flag;
    }

    public ArrayList<Genre> collectFavGenre() {
        ArrayList<Genre> userGenre = new ArrayList<>();

        try {
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tss?user=root&password=1234");

            String query = "SELECT g.genre_id, g.name from genre_favourites as gf inner join genres as g where gf.user_id = ? and gf.genre_id = g.genre_id";

            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, this.user.getUserId());

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                userGenre.add(new Genre(rs.getInt(1), rs.getString(2)));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return userGenre;
    }

    public Integer getGenreFavouriteId() { 
        return genreFavouriteId;
    }

    public void setGenreFavouriteId(Integer genreFavouriteId) {
        this.genreFavouriteId = genreFavouriteId;
    }

    public Genre getGenre() {
        return genre;
    }

    public void setGenre(Genre genre) {
        this.genre = genre;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    
}
