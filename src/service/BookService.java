package service;

import beans.Book;

import java.sql.SQLException;
import java.util.List;

public interface BookService {
    public int createBook(Book book);
    public int modifyBookNumber(int bookid, int n);
    public List<Book> getBooks(String sql, Object... values);
    public int deleteBook(int id);
    List<Book> getBooks1();
    List<Book> getBooksByKind(String  book_kind,int fromtype);//按照类别查询图书信息
    List<Book> getBooksByName(String  book_name) throws SQLException;//按照类别查询图书信息

}
