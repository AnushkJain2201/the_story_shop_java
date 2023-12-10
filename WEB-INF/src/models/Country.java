package models;

public class Country {
    private Integer countryId;
    private String name;

    public Country() {

    }

     public Country(Integer countryId, String name) {
        this.countryId = countryId;
        this.name = name;
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