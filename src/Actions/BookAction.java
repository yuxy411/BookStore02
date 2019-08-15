package Actions;

import beans.Book;
import com.opensymphony.xwork2.ActionContext;
import service.BookService;

import service.impl.BookServiceImpl;
import utils.Sql;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookAction {

    BookService service=new BookServiceImpl();
    private String book_type;
    private String book_name;
    private int fromtype;

    public int getFromtype() {
        return fromtype;
    }

    public void setFromtype(int fromtype) {
        this.fromtype = fromtype;
    }

    public String getBook_type() {
        return book_type;
    }

    public void setBook_type(String book_type) {
        this.book_type = book_type;
    }

    public String getBook_name() {
        return book_name;
    }

    public void setBook_name(String book_name) {
        this.book_name = book_name;
    }

    /**
     * 查找所有图书
     * @return
     */
    public String displayBookAction(){
        List<Book> books =new ArrayList<>();
        books = service.getBooks1();
        if (books.size() > 0) {
            ActionContext.getContext().getSession().put("booklist",books);
            return "success";

        } else {
            return "fail";
        }
    }

    /**
     * 按图书名称进行搜索查询
     * @return  注意书的内容booklist相比于全部搜索改变了
     * @throws SQLException
     */
    public String searchByName() throws SQLException {
        List<Book> books=new ArrayList<>();
        if(book_name!=null){
            books=service.getBooksByName(book_name);
            if (books.size() > 0) {
                ActionContext.getContext().getSession().put("booklist",books);
                return "success";
            } else {
                ActionContext.getContext().getSession().put("booklist",null);
                return "fail";
            }
        }else{
            //用户没输入内容，进行全局搜索
            books = service.getBooks1();
            ActionContext.getContext().getSession().put("booklist",books);
            return "fail";
        }


    }

    /**
     * 按照类别查询图书 book_type
     * @return
     */
    public String displayBookKindAction(){
        List<Book> books =new ArrayList<>();
        books = service.getBooksByKind(book_type,fromtype);
        if (books.size() > 0) {
            ActionContext.getContext().getSession().put("booklist",books);
            return "success";
        } else {
            ActionContext.getContext().getSession().put("booklist",null);
            return "fail";
        }
    }

    public String displayBookLoginKindAction(){
        List<Book> books =new ArrayList<>();
        books = service.getBooksByKind(book_type,fromtype);
        if (books.size() > 0) {
            ActionContext.getContext().getSession().put("booklist",books);
            return "success";
        } else {
            ActionContext.getContext().getSession().put("errmeg","还没有该类图书~");
            return "fail";
        }
    }

}
