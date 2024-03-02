package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.jasypt.util.password.StrongPasswordEncryptor;

public class User {
    static StrongPasswordEncryptor spe = new StrongPasswordEncryptor();

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
    private String OTP;
    private String bio;
    private Boolean userType;
    private Boolean hasPremium;

    public User() {

    }

    public User(String OTP) {
        this.OTP = OTP;
    }

    public User(String email, String OTP, int num) {
        this.email = email;
        this.OTP = OTP;
    }

    public User(String email, String password) {
        this.email = email;
        this.password = password;
    }

    public User(String name, String email, String password, Country country, String phone, String OTP, Boolean userType) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.phone = phone;
        this.country = country;
        this.OTP = OTP;
        this.userType = userType;
    }

    public User(Integer userId, String name, String email, String password, String phone, String address, String profilePic, Integer bookAdded, Country country, Status status, String OTP, String bio, Boolean userType, Boolean hasPremium) {
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

    public boolean saveBio() {
        boolean flag = false;

        try {
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tss?user=root&password=1234");

            String query = "update users set bio=? where email=?";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, bio);
            ps.setString(2, email);
            
            int result = ps.executeUpdate();

            if(result == 1) {
                flag = true;
            }

        } catch(SQLException e) {
            e.printStackTrace();
        }

        return flag;
    }
    

    public boolean editProfile() {
        boolean flag = false;

        try {
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tss?user=root&password=1234");

            String query = "update users set name=?, phone=? where email=?";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, name);
            ps.setString(2, phone);
            ps.setString(3, email);
            
            int result = ps.executeUpdate();

            if(result == 1) {
                flag = true;
            }

        } catch(SQLException e) {
            e.printStackTrace();
        }

        return flag;
    }

    public boolean saveProfilePic() {
        boolean flag = false;

        try {
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tss?user=root&password=1234");

            String query = "update users set profile_pic=? where email=?";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, profilePic);
            ps.setString(2, email);
            
            int result = ps.executeUpdate();

            if(result == 1) {
                flag = true;
            }

        } catch(SQLException e) {
            e.printStackTrace();
        }

        return flag;
    }

    public boolean updatePassword() {
        boolean flag = false;

        try {
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tss?user=root&password=1234");

            String query = "update users set password = ? where email = ?";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, spe.encryptPassword(password));
            ps.setString(2, email);
            
            int result = ps.executeUpdate();

            if(result == 1) {
                flag = true;
            }

        } catch(SQLException e) {
            e.printStackTrace();
        }

        return flag;
    }

    public int login() {
        int statusId = 0;

        try {
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tss?user=root&password=1234");

            String query = "select user_id, u.name, password, phone, c.country_id, c.name, s.status_id, s.name, user_type, has_premium, profile_pic, bio from users as u inner join countries as c inner join status as s where email = ? and u.country_id = c.country_id and u.status_id = s.status_id";

            PreparedStatement ps = con.prepareStatement(query); 
            ps.setString(1, email);

            ResultSet rs = ps.executeQuery();

            if(rs.next()) {
                statusId = rs.getInt(7);

                if(statusId == 1) {
                    if(spe.checkPassword(password, rs.getString("password"))) {
                        password = null;
                        userId = rs.getInt("user_id");
                        name = rs.getString(2);
                        phone = rs.getString("phone");
                        country = new Country(rs.getInt(5), rs.getString(6));
                        status = new Status(rs.getInt(7), rs.getString(8));
                        userType = rs.getBoolean("user_type");
                        hasPremium = rs.getBoolean("has_premium");
                        profilePic = rs.getString("profile_pic");
                        bio = rs.getString("bio");
                    }
                    else {
                        statusId = -1;
                    }
                }
            }
            con.close();

        } catch(SQLException e) {
            e.printStackTrace();
        }

        return statusId;
    }

    public boolean updateOTP() {
        boolean flag = false;

        try {
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tss?user=root&password=1234");

            String query = "update users set OTP = ? where email = ?";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, Integer.parseInt(OTP));
            ps.setString(2, email);
            
            int result = ps.executeUpdate();

            if(result == 1) {
                flag = true;
            }

        } catch(SQLException e) {
            e.printStackTrace();
        }

        return flag;
    }

    public boolean verifyEmail(Integer finalOTP) {
        boolean flag = false;

        try {
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tss?user=root&password=1234");

            String query = "update users set status_id = 1, OTP = NULL where email = ? and OTP = ?";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, email);
            ps.setInt(2, finalOTP);
            
            int result = ps.executeUpdate();
            System.out.println("yaha andar tak aa taha hu");

            if(result == 1) {
                flag = true;
            }

        } catch(SQLException e) {
            e.printStackTrace();
        } 

        return flag;
    }

    public static boolean checkDuplicatePhone(String enteredPhone) {
        boolean flag = false;

        try {
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tss?user=root&password=1234");

            String query = "select user_id from users where phone = ?";

            PreparedStatement ps = con.prepareStatement(query);
            
            ps.setString(1, enteredPhone);

            ResultSet rs = ps.executeQuery();

            if(rs.next()) {
                flag = true;
            }

        } catch(SQLException e) {
            e.printStackTrace();
        }

        return flag;
    }

    public static boolean checkDuplicateEmail(String enteredEmail) {
        boolean flag = false;

        try {
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tss?user=root&password=1234");

            String query = "select user_id from users where email = ?";

            PreparedStatement ps = con.prepareStatement(query);
            
            ps.setString(1, enteredEmail);

            ResultSet rs = ps.executeQuery();

            if(rs.next()) {
                flag = true;
            }

        } catch(SQLException e) {
            e.printStackTrace();
        }

        return flag;
    }

    public boolean signUpUser() {
        boolean flag = false;

        try {
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tss?user=root&password=1234");

            String query = "insert into users (name, email, password, phone, country_id, OTP, status_id, user_type) values (?, ?, ?, ?, ?, ?, ?, ?)";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, spe.encryptPassword(password));
            ps.setString(4, phone);
            ps.setInt(5, country.getCountryId());
            ps.setString(6, OTP);
            ps.setInt(7, status.getStatusId());
            ps.setInt(8, userType ? 1 : 0);

            int result = ps.executeUpdate();

            if(result == 1) {
                flag = true;
            }

        } catch(SQLException e) {
            e.printStackTrace();
        }

        return flag;
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

    public String getOTP() {
        return OTP;
    }

    public void setOTP(String OTP) {
        this.OTP = OTP;
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
