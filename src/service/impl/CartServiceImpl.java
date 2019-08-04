package service.impl;

import beans.Cart;
import beans.OrderItem;
import dao.CartDao;
import dao.impl.CartDaoImpl;
import service.CartService;

import java.util.List;

public class CartServiceImpl implements CartService {
    private CartDao dao=new CartDaoImpl();

   public  List<Cart> getCards(int  userId){
       List<Cart> orderItems=dao.getCarts(userId);
        return orderItems;

    }

    @Override
    public int insertCart(Cart cart) {
      int t= dao.insertOrder(cart);
        return t;
    }

    @Override
    public int addCart(Cart cart) {
       int t=dao.addCart(cart);
        return t;
    }

    @Override
    public List<OrderItem> getOrders(int userId) {
        List<OrderItem> orderItems=dao.getOrders(userId);
        return orderItems;

    }

    @Override
    public int deleteOrder(int userId) {
        return 0;
    }

    @Override
    public int deleteCart(int orderId) {
       int t=dao.deleteCart(orderId);
        return t;
    }

    @Override
    public int addNumber(int orderId) {
       int t=dao.addNumber(orderId);
        return t;
    }

    @Override
    public int suNumber(int orderId) {
        int t=dao.suNumber(orderId);
        return t;
    }

    @Override
    public void delete(int orderId) {
        dao.delete(orderId);
    }
}
