package dao;



import beans.Book;

import java.util.List;

/*
* 创建，编辑（增加减少数量），删除，查找**/
public interface BookDao {
    public int createBook(Book book);
    public int modifyBook(String sql, Object... values);
    public List<Book> getBook(String sql, Object... values);
    public int deleteBook(int id);
    public  List<Book> getBooksByName(String book_name);

    //查询所有图书信息
    List<Book> getBooks1();

    //按照类别查询图书
    List<Book> getBooksByKind(String kind);


}
