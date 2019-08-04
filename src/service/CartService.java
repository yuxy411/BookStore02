package service;

import beans.Cart;
import beans.OrderItem;

import java.util.List;

public interface CartService {
    //获取全部购物车信息
    List<Cart> getCards(int userId);

    //添加用户的订单请求
    int insertCart(Cart cart);

    //添加购物车
   // int addCart(OrderItem cart);
    int addCart(Cart cart);

    //获取所有订单信息
    List<OrderItem> getOrders(int userId);

    //删除用户的订单
    int deleteOrder(int userId);

    //提交订单之后，从购物车中删除该订单
    int deleteCart(int orderId);

    //通过购物车添加书籍的数目
    int addNumber(int orderId);
    int suNumber(int orderId);

    //删除
    void delete(int orderId);

}
