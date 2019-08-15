package service.impl;

import beans.Book;
import dao.BookDao;
import dao.impl.BookDaoImpl;
import service.BookService;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookServiceImpl implements BookService {
    private BookDao dao=new BookDaoImpl() ;
    @Override
    public int createBook(Book book) {
        int n=dao.createBook(book);
        return n;
    }

    @Override
    public int modifyBookNumber(int bookid, int n) {
        return 0;
    }

    @Override
    public List<Book> getBooks(String sql, Object... values) {
        List<Book> books=new ArrayList<Book>();
        books=dao.getBook(sql,values);
        return books;
    }

    @Override
    public int deleteBook(int id) {
        return 0;
    }

    @Override
    public List<Book> getBooks1() {
        List<Book> books = dao.getBooks1();
        return books;
    }

    @Override
    public List<Book> getBooksByKind(String kind,int fromtype) {  //提交类别之后 按照类别查询图书
        List<Book> books = dao.getBooksByKind(kind,fromtype);
        return books;
    }

    @Override
    public List<Book> getBooksByName(String book_name) throws SQLException {
        List<Book> books = dao.getBooksByName(book_name);
        return books;
    }
}
