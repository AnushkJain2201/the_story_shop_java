package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletContext;

public class Order {
    private Integer orderId;
    private User user;
    private Date orderDate;
    private Integer totalAmount;
    private Integer orderQuantity;

    public static ServletContext appContext;
    public static String conURL;

    public Order() {

    }

    public Order(Integer orderId, User user, Date orderDate, Integer totalAmount, Integer orderQuantity) {
        this.orderId = orderId;
        this.user = user;
        this.orderDate = orderDate;
        this.totalAmount = totalAmount;
        this.orderQuantity = orderQuantity;
    }

    public static ArrayList<Order> getOrders(Integer userId) {
        ArrayList<Order> orders = new ArrayList<>();

        try {
            Connection con = DriverManager.getConnection(conURL);

            String query = "select * from orders where user_id = ?";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, userId);
            

            ResultSet rs = ps.executeQuery();

            while(rs.next()) {
                Order order = new Order();
                order.setOrderId(rs.getInt("order_id"));
                order.setUser(new User(rs.getInt("user_id")));
                order.setOrderDate(rs.getDate("order_date"));
                order.setTotalAmount(rs.getInt("total_amount"));
                order.setOrderQuantity(rs.getInt("order_quantitiy"));
                orders.add(order);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return orders;
    }

    public Integer saveOrder() {
        Integer orderID = null;
        ResultSet generatedKey = null;
        try {
            Connection con = DriverManager.getConnection(conURL);

            String query = "insert into orders (user_id, total_amount, order_quantitiy) values (?, ?, ?)";

            PreparedStatement ps = con.prepareStatement(query, PreparedStatement.RETURN_GENERATED_KEYS);

            ps.setInt(1, user.getUserId());
            ps.setInt(2, totalAmount);
            ps.setInt(3, orderQuantity);

            int result = ps.executeUpdate();

            if (result > 0) {
                generatedKey = ps.getGeneratedKeys();
                if (generatedKey.next()) {
                    orderID = generatedKey.getInt(1);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return orderID;
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public Integer getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(Integer totalAmount) {
        this.totalAmount = totalAmount;
    }

    public Integer getOrderQuantity() {
        return orderQuantity;
    }

    public void setOrderQuantity(Integer orderQuantity) {
        this.orderQuantity = orderQuantity;
    }

}
