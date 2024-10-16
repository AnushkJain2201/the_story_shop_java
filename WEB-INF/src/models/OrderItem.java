package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletContext;

public class OrderItem {
    private Integer orderItemId;
    private Order order;
    private Book book;
    private Integer quantity;
    private Integer subtotal;

    public static ServletContext appContext;
    public static String conURL;

    public OrderItem() {

    }

    public OrderItem(Integer orderItemId, Order order, Book book, Integer quantity, Integer subtotal) {
        this.orderItemId = orderItemId;
        this.order = order;
        this.book = book;
        this.quantity = quantity;
        this.subtotal = subtotal;
    }

    public boolean saveOrderItem() {
        boolean flag = false;
        try {
            Connection con = DriverManager.getConnection(conURL);

            String query = "insert into order_items (order_id, book_id, quantity, subtotal) values (?, ?, ?, ?)";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, order.getOrderId());
            ps.setInt(2, book.getBookId());
            ps.setInt(3, quantity);
            ps.setInt(4, subtotal);

            int result = ps.executeUpdate();

            if (result > 0) {
                flag = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }

    public Integer getOrderItemId() {
        return orderItemId;
    }

    public void setOrderItemId(Integer orderItemId) {
        this.orderItemId = orderItemId;
    }

    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public Integer getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(Integer subtotal) {
        this.subtotal = subtotal;
    }

}
