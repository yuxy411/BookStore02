package dao.impl;

import beans.Cart;
import beans.OrderItem;
import dao.BaseDao;
import dao.CartDao;
import org.junit.Test;

import java.util.List;

public class CartDaoImpl extends BaseDao<Cart> implements CartDao {

    @Override
    public List<Cart> getCarts(int userId) {
        //1写sql语句
        String sql="select * from cart where userId=? and status=?";//查询用户id的购物车内容
        List<Cart> beanList=getBeanList(sql,userId,0);
        return beanList;
    }

    @Override
    public int insertOrder(Cart cart) {
        String sql="insert into cart(userId,bookId,number,price,bookname,img,author,status) values(?,?,?,?,?,?,?,?)";
        int t= update(sql,cart.getUserId(),cart.getBookId(),cart.getNumber(),cart.getBook_price(),cart.getBook_name(),cart.getBook_img(),cart.getBook_author(),1);
        return t;
    }

    @Override
    public List<OrderItem> getOrders(int userId) {
//        //1写sql语句
//        String sql="select * from cart where userId=? and status=?";//查询用户id的购物车内容
//        List<OrderItem> beanList=getBeanList(sql,userId,1);
//        return beanList;
        return null;
    }

    @Override
    public int deleteOrder(int userId) {
        //删除用户的订单
        String sql="";
        return 0;
    }

    @Override
    public int deleteCart(int orderId) {
        String sql="update cart set status=? where orderId=?";
          int t=  update(sql,1,orderId);
      return t;

    }

    @Override
    public int addCart(Cart cart) {
        String sql="insert into cart(userId,bookId,number,book_price,book_name,book_img,book_author,status) values(?,?,?,?,?,?,?,?)";
        int t= update(sql,cart.getUserId(),cart.getBookId(),cart.getNumber(),cart.getBook_price(),cart.getBook_name(),cart.getBook_img(),cart.getBook_author(),0);
        return t;
    }

    @Override
    public int addNumber(int orderId) {
//        String sql1="select number from cart where orderId=?";
//        OrderItem bean = getBean(sql1, orderId);
//         int  number=bean.getNumber()+1;
//        String sql="update cart set number=? where orderId=?";
//        int t =update(sql,number,orderId);
//        return t;
        return 0;
    }



    @Override
    public int suNumber(int orderId) {
//        String sql1="select number from cart where orderId=?";
//        OrderItem bean = getBean(sql1, orderId);
//        int  number=bean.getNumber()-1;
//        String sql="update cart set number=? where orderId=?";
//        int t =update(sql,number,orderId);
//        return t;
        return 0;
    }

    @Override
    public void delete(int orderId) {
        String sql="delete from cart where orderId=?";
        update(sql,orderId);
    }


}
