package beans;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * 购物车类
 */
public class Cart implements Serializable{
    private int orderId;
    private int userId;
    private int bookId;
    private String book_name;
    private String book_img;
    private String book_author;
    private int status;
    private int number;
    private double book_price;

    public Cart(int userId, int bookId, String bookname, String img, String author, int status, int number, double price) {
        this.userId = userId;
        this.bookId = bookId;
        this.book_name = bookname;
        this.book_img = img;
        this.book_author = author;
        this.status = status;
        this.number = number;
        this.book_price = price;
    }
    public Cart(){

    }

    public Cart(int orderId, int userId, int bookId, String book_name, String book_img, String book_author, int status, int number, double book_price) {
        this.orderId = orderId;
        this.userId = userId;
        this.bookId = bookId;
        this.book_name = book_name;
        this.book_img = book_img;
        this.book_author = book_author;
        this.status = status;
        this.number = number;
        this.book_price = book_price;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
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

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public double getBook_price() {
        return book_price;
    }

    public void setBook_price(double book_price) {
        this.book_price = book_price;
    }

    //    private Map<String, CartItem> map=new LinkedHashMap<>();
//    private int totalCount;
//    private double totalAmount;
//
//
//    //清空购物车
//    public void clearCart(){
//        map.clear();
//    }
//    //根据bookId删除一条购物车项图书
//    public void deleteCartItem(String bookId){
//        map.remove(bookId);
//    }
//    // 将图书添加到购物车中
//    public void addBook2Cart(Book book) {
//        // 获取购物车中该图书对应的购物项
//        System.out.println("getTotalCount1="+getTotalCount());
//        try{
//            System.out.println("getTotalCount2="+getTotalCount());
//            CartItem cartItem = map.get(book.getId() + "");
//            if (cartItem == null) {
//                // 原来购物车中还没有该购物项，创建该购物项
//                cartItem = new CartItem();
//                // 将Book对象设置到购物项中
//                cartItem.setBook(book);
//                // 设置购物项中该图书的数量为1
//                cartItem.setCount(1);
//                //将购物项设置到购物车中
//                map.put(book.getId()+"", cartItem);
//                System.out.println("map"+map.size());//123
//            } else {
//                // 原来购物车中已经有该购物项，此时只需要在原来购物项中图书的数量的基础上再加1即可
//                cartItem.setCount(cartItem.getCount() + 1);
//            }
//        }catch (Exception e){
//            e.printStackTrace();
//        }
//
//    }
//    //更新购物项数目
//    public void updateCart(String bookId,String bookCount){
//        CartItem cartItem=map.get(bookId);
//        try {
//            // 将bookCount进行强转
//            int parseInt = Integer.parseInt(bookCount);
//            if (parseInt > 0) {
//                // 更新购物项中图书的数量
//                cartItem.setCount(parseInt);
//            }
//        } catch (Exception e) {
//        }
//    }
//    //将图书添加到购物车中(未实现)
//
//
//    public Map<String, CartItem> getMap() {
//        return map;
//    }
//
//    public void setMap(Map<String, CartItem> map) {
//        this.map = map;
//    }
//      //获取所有购物项
//    public List<CartItem> getCartItems(){
//        Collection<CartItem> values=map.values();
//        return new ArrayList<>(values);
//    }
//
//    //获取全部图书数目
//    public int getTotalCount() {
//        List<CartItem> cartItems=getCartItems();
//        for (CartItem cartItem:cartItems) {
//            totalCount+=cartItem.getCount();
//        }
//        return totalCount;
//    }
//
//    //获取所有图书金额小计
//    public double getTotalAmount() {
//        BigDecimal totalAmount=new BigDecimal("0");
//     //   int totalAmount=0;
//        List<CartItem> cartItems=getCartItems();
//        for (CartItem cartItem:cartItems) {
//            BigDecimal price1=new BigDecimal(""+cartItem.getBook().getBook_price());
//            totalAmount=totalAmount.add(price1);
//        }
//        return totalAmount.doubleValue();
//    }
//
//

    
}
