package models;

public class Status {
    private Integer statusId;
    private String status;

    public Status() {

    }

    public Status(Integer statusId, String status) {
        this.statusId = statusId;
        this.status = status;
    }

    public Integer getStatusId() {
        return statusId;
    }

    public String getStatus() {
        return status;
    }

    public void setStatusId(Integer statusId) {
        this.statusId = statusId;
    }

    public void setStatus(String status) {
        this.status = status;
    }

}
