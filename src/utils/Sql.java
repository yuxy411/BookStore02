package utils;

public class Sql {
    public final static String getBooks = "select *from tb_book";
    public final static String insertBook= "insert into tb_book(book_name,book_author,book_price,book_type,book_publishing,book_abstract,book_img,book_store) values(?,?,?,?,?,?,?,?)";
    public final static String searchByName="select * from tb_book where book_name=?";
}
