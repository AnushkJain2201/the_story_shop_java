package models;

public class User {
    private Integer userId;
    private String name;
    private String email;
    private String password;
    private String phone;
    private String address;
    private String profilePic;
    private Integer bookAdded;
    private Country country;
    private Status status;
    private Integer OTP;
    private String bio;
    private Boolean userType;
    private Boolean hasPremium;

    public User() {

    }

    public User(Integer userId, String name, String email, String password, String phone, String address, String profilePic, Integer bookAdded, Country country, Status status, Integer OTP, String bio, Boolean userType, Boolean hasPremium) {
        this.userId = userId;
        this.name = name;
        this.email = email;
        this.password = password;
        this.phone = phone;
        this.address = address;
        this.profilePic = profilePic;
        this.bookAdded = bookAdded;
        this.country = country;
        this.status = status;
        this.OTP = OTP;
        this.bio = bio;
        this.userType = userType;
        this.hasPremium = hasPremium;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getProfilePic() {
        return profilePic;
    }

    public void setProfilePic(String profilePic) {
        this.profilePic = profilePic;
    }

    public Integer getBookAdded() {
        return bookAdded;
    }

    public void setBookAdded(Integer bookAdded) {
        this.bookAdded = bookAdded;
    }

    public Country getCountry() {
        return country;
    }

    public void setCountry(Country country) {
        this.country = country;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public Integer getOTP() {
        return OTP;
    }

    public void setOTP(Integer oTP) {
        OTP = oTP;
    }

    public String getBio() {
        return bio;
    }

    public void setBio(String bio) {
        this.bio = bio;
    }

    public Boolean getUserType() {
        return userType;
    }

    public void setUserType(Boolean userType) {
        this.userType = userType;
    }

    public Boolean getHasPremium() {
        return hasPremium;
    }

    public void setHasPremium(Boolean hasPremium) {
        this.hasPremium = hasPremium;
    }

}
