package dao;

import beans.Cart;
import beans.CartItem;
import beans.OrderItem;
import com.sun.org.apache.xpath.internal.operations.Or;

import java.util.List;

public interface CartDao {
    //根据用户Id 获取该用户所有购物车信息
    List<Cart> getCarts(int userId);

    //插入一条订单信息
    int insertOrder(Cart cart);

    //获取该用户的订单信息
    List<OrderItem> getOrders(int userId);

    //删除用户指定的订单
    int deleteOrder(int userId);

    //用户提交订单之后，删除购物车中该订单
    int deleteCart(int orderId);

//    int addCart(OrderItem cart);
    int addCart(Cart cart);

    //通过购物车添加书籍的数目
    int addNumber(int orderId);
    int suNumber(int orderId);

    //删除
    void delete(int orderId);
}
