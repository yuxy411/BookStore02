package beans;

public class OrderItem {
    private int orderId;
    private int userId;
    private int bookId;
    private String book_name;
    private int number;
    private String book_img;
    private String book_author;
    private double book_price;
    private int status;
    private double totalnumber;

    public OrderItem() {
    }

//    public OrderItem(int userId, int bookId, String bookname, int number, String img, String author, double price, int status) {
//        this.orderId = orderId;
//        this.userId = userId;
//        this.bookId = bookId;
//        this.bookname = bookname;
//        this.number = number;
//        this.img = img;
//        this.author = author;
//        this.price = price;
//        this.status = status;
//        this.totalnumber = totalnumber;
//    }

    public OrderItem(int userId, int bookId, String book_name, int number, String book_img, String book_author, double book_price, int status) {
        this.userId = userId;
        this.bookId = bookId;
        this.book_name = book_name;
        this.number = number;
        this.book_img = book_img;
        this.book_author = book_author;
        this.book_price = book_price;
        this.status = status;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getBookId() {
        return bookId;
    }

    public void setBookId(int bookId) {
        this.bookId = bookId;
    }

    public String getBook_name() {
        return book_name;
    }

    public void setBook_name(String book_name) {
        this.book_name = book_name;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public String getBook_img() {
        return book_img;
    }

    public void setBook_img(String book_img) {
        this.book_img = book_img;
    }

    public String getBook_author() {
        return book_author;
    }

    public void setBook_author(String book_author) {
        this.book_author = book_author;
    }

    public double getBook_price() {
        return book_price;
    }

    public void setBook_price(double book_price) {
        this.book_price = book_price;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public double getTotalnumber() {
        return totalnumber;
    }

    public void setTotalnumber(double totalnumber) {
        this.totalnumber = totalnumber;
    }
    //    private int id;
//    private int orderId;
//    private int bookId;
//    private int number;
//    private double bookprice;
//
//    public int getId() {
//        return id;
//    }
//
//    public void setId(int id) {
//        this.id = id;
//    }
//
//    public int getOrderId() {
//        return orderId;
//    }
//
//    public void setOrderId(int orderId) {
//        this.orderId = orderId;
//    }
//
//    public int getBookId() {
//        return bookId;
//    }
//
//    public void setBookId(int bookId) {
//        this.bookId = bookId;
//    }
//
//    public int getNumber() {
//        return number;
//    }
//
//    public void setNumber(int number) {
//        this.number = number;
//    }
//
//    public double getBookprice() {
//        return bookprice;
//    }
//
//    public void setBookprice(double bookprice) {
//        this.bookprice = bookprice;
//    }
}
