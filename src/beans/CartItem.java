package beans;

import java.io.Serializable;

/**
 * 购物项
 */
public class CartItem  implements Serializable {
    private Book book;
    private int count;
    private double totalAmount;

    public CartItem(Book book, int count) {
        this.book = book;
        this.count = count;
    }

    public CartItem() {
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }
    public double getTotalAmount(){
        return book.getBook_price()*count;
    }
}
