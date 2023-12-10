package models;

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
