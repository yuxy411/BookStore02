package beans;

import java.sql.Blob;

//entity包存放所有的实体类，即需要操作的对象的类，Hibernate:每个类需要配置XML来对数据库映射，映射后直接操作对象来与数据库打交道
public class Book {
    private int bookId;//图书id主键
    private String book_name;//图书名
    private String book_author;//作者
    private double book_price;//价格
    private String book_type;//类型
    private String book_publishing;//出版社
    private String book_abstract;//简介
    private String  book_img;//图书封面
    private int book_store;//库存

    public Book(int bookId, String book_name, String book_author, double book_price, String book_type, String book_publishing, String book_abstract, String book_img, int book_store) {
        this.bookId = bookId;
        this.book_name = book_name;
        this.book_author = book_author;
        this.book_price = book_price;
        this.book_type = book_type;
        this.book_publishing = book_publishing;
        this.book_abstract = book_abstract;
        this.book_img = book_img;
        this.book_store = book_store;
    }

    public Book(String book_name, String book_author, double book_price, String book_type, String book_publishing, String book_abstract, String book_img, int book_store) {
        this.book_name = book_name;
        this.book_author = book_author;
        this.book_price = book_price;
        this.book_type = book_type;
        this.book_publishing = book_publishing;
        this.book_abstract = book_abstract;
        this.book_img = book_img;
        this.book_store = book_store;
    }

    public Book() {
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

    public String getBook_type() {
        return book_type;
    }

    public void setBook_type(String book_type) {
        this.book_type = book_type;
    }

    public String getBook_publishing() {
        return book_publishing;
    }

    public void setBook_publishing(String book_publishing) {
        this.book_publishing = book_publishing;
    }

    public String getBook_abstract() {
        return book_abstract;
    }

    public void setBook_abstract(String book_abstract) {
        this.book_abstract = book_abstract;
    }

    public String getBook_img() {
        return book_img;
    }

    public void setBook_img(String book_img) {
        this.book_img = book_img;
    }

    public int getBook_store() {
        return book_store;
    }

    public void setBook_store(int book_store) {
        this.book_store = book_store;
    }
}
