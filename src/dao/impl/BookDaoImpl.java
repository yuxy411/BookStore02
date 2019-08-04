package dao.impl;

import beans.Book;
import dao.BaseDao;
import dao.BookDao;
import utils.JDBCUtils;
import utils.JdbcPool;
import utils.Sql;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookDaoImpl extends BaseDao<Book> implements BookDao{
    private Connection conn = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    @Override
    public List<Book> getBooks1() {  //我的获取所有图书的方法
        //1写sql语句
        String sql="select *from tb_book";
        List<Book> beanList = getBeanList(sql);
        return beanList;
    }

    @Override
    public List<Book> getBooksByKind(String kind) {
        String sql="select * from tb_book where book_type="+kind;
        List<Book> beanList = getBeanList(sql);
        return beanList;
    }


    @Override
    public int createBook(Book book) {
        int n=-1;
        conn= JdbcPool.getConnection();
        try {
            ps=conn.prepareStatement(Sql.insertBook);
        ps.setString(1,book.getBook_name());
        ps.setString(2,book.getBook_author());
        ps.setDouble(3,book.getBook_price());
        if (book.getBook_type()=="1"){
            ps.setString(4,"学习");
        }else if (book.getBook_type()=="2"){
            ps.setString(4,"娱乐");
        }else  ps.setString(4,"小说");
        ps.setString(5,book.getBook_publishing());
        ps.setString(6,book.getBook_abstract());
        ps.setString(7,book.getBook_img());
        ps.setInt(8,book.getBook_store());
        n=ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        JdbcPool.freeConnection(conn,ps,rs);
        return n;
    }

    @Override
    public int modifyBook(String sql, Object... values) {
        return 0;
    }

    @Override
    public List<Book> getBook(String sql, Object... values) {  //使用JdbcPool方法连接数据库
        List<Book> books=new ArrayList<Book>();
        try{
            conn= JdbcPool.getConnection();
        }catch (Exception e){
        //    System.out.println(e.getMessage());
        }
        try {
         //   System.out.println(values.length+"this is a test");
            ps=conn.prepareStatement(sql);
            for (int i=0;i<values.length;i++){
//                System.out.println("values[i]"+values[i]);
                ps.setObject(i+1,values[i]);
            }
            rs=ps.executeQuery();
            while (rs.next()){
                books.add(new Book(rs.getInt("id"),rs.getString("book_name"),
                        rs.getString("book_author"),rs.getDouble("book_price")
                        ,rs.getString("book_type"),rs.getString("book_publishing"),
                        rs.getString("book_abstract"),rs.getString("book_img"),rs.getInt("book_store")));
            }
            JdbcPool.freeConnection(conn,ps,rs);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return books;
    }

    @Override
    public int deleteBook(int id) {
        return 0;
    }

    @Override
    public List<Book> getBooksByName(String book_name) {
        //1写sql语句
        String sql="select *from tb_book where book_name="+book_name;
        List<Book> beanList = getBeanList(sql);
        return beanList;
    }


}