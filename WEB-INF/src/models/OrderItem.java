package models;

public class OrderItem {
    private Integer orderItemId;
    private Order order;
    private Book book;
    private Integer quantity;
    private Integer subtotal;

    public OrderItem() {

    }

    public OrderItem(Integer orderItemId, Order order, Book book, Integer quantity, Integer subtotal) {
        this.orderItemId = orderItemId;
        this.order = order;
        this.book = book;
        this.quantity = quantity;
        this.subtotal = subtotal;
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
