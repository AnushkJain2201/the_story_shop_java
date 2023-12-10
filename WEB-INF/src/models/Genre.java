package models;

public class Genre {
    private Integer genreId;
    private String name;

    public Genre() {

    }

    public Genre(Integer genreId, String name) {
        this.genreId = genreId;
        this.name = name;
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
