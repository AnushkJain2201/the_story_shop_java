package models;

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
