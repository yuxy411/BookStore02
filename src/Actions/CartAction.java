package Actions;

import beans.*;
import com.opensymphony.xwork2.ActionContext;
import service.CartService;
import service.impl.CartServiceImpl;


import java.util.ArrayList;
import java.util.List;

public class CartAction {
    CartService service=new CartServiceImpl();
    private int userId;
    private int orderId;
     private double book_price;
     private int number;
    private int bookId;
    private String book_name;
    private String book_img;
    private String book_author;
    private int status;

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }
    public String delete(){
        service.delete(orderId);
        return "success";
    }

    /**
     * 添加加入购物车的书籍数目
     * @return
     */
    public String addNumber(){
        System.out.println("orderId="+orderId);
        int t=service.addNumber(orderId);

        if(t>0){
            //添加数目成功
            return "success";
        }
        else {
            //添加数目失败
            return "fail";
        }
    }
    /**
     * 添加加入购物车的书籍数目
     * @return
     */
    public String suNumber(){
        int t=service.suNumber(orderId);
        if(t>0){
            //添加数目成功
            return "success";
        }
        else {
            //添加数目失败
            return "fail";
        }
    }
    public String addCartAction(){
      System.out.println("adduserId="+userId);

        if(userId==0){
            //先判断用户是否登录了
            return "unEnter";
        }else{
            Cart cart=new Cart(userId, bookId,book_name,book_img, book_author, status, number,book_price);
            int p= service.addCart(cart);
            if(p!=0){
                //添加购物车成功
                ActionContext ctx=ActionContext.getContext();
                ctx.getSession().put("userId",userId);
                return "success";
            }else {
                //添加购物车失败
                return  "fail";
            }
        }




    }

    public String displayCartAction(){
        // 查找所有的购物车选项
        List<Cart> cartItems =new ArrayList<>();
      //  System.out.println("displayuserId="+userId);
        cartItems = service.getCards(userId);
        if (cartItems.size() > 0) {
         //   System.out.println("carts="+orderItems.size());
            ActionContext.getContext().getSession().put("cartlist",cartItems);
            return "success";

        } else {
            return "fail";
        }
    }

    /**
     *   删除用户指定的订单
     * @return
     */
    public String deleteOrderAction(){
        int t=service.deleteOrder(userId);
        if(t!=0){
            return "success";
        }
        else {
            return "fail";
        }
    }



    /**
     *   //       查找所有的购物车选项
     * @return
     */
    public String displayOrderAction(){
        List<OrderItem> orderItems =new ArrayList<>();
        orderItems = service.getOrders(userId);
        if (orderItems.size() > 0) {
            ActionContext.getContext().getSession().put("orderlist",orderItems);
            return "success";

        } else {
            return "fail";
        }
    }
    /**
     *
     * @return  添加用户提交的订单
     */
    public String submitOrderAction(){
        CartService cartService=new CartServiceImpl();
       int p=cartService.deleteCart(orderId);
        if(p!=0){ //该用户已经存在了，就不容许在注册
         //   actionContext.put("message","用户名已存在！");
            return "success";
        }
        else {
            System.out.println("用户不存在 可以注册");
            return "fail";

        }
    }


    public CartService getService() {
        return service;
    }

    public void setService(CartService service) {
        this.service = service;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public double getBook_price() {
        return book_price;
    }

    public void setBook_price(double book_price) {
        this.book_price = book_price;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
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

    public String getBook_img() {
        return book_img;
    }

    public void setBook_img(String book_img) {
        this.book_img = book_img;
    }

    public String getBook_author() {
        return book_author;
    }

    public void setBook_author(String book_author) {
        this.book_author = book_author;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
