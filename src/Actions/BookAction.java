package Actions;

import beans.Book;
import com.opensymphony.xwork2.ActionContext;
import service.BookService;

import service.impl.BookServiceImpl;
import utils.Sql;

import java.util.ArrayList;
import java.util.List;

public class BookAction {

    BookService service=new BookServiceImpl();
    private String book_type;
    private String book_name;

    public String getBook_type() {
        return book_type;
    }

    public void setBook_type(String book_type) {
        this.book_type = book_type;
    }


    public String displayBookAction(){
       //查找所有书
        List<Book> books =new ArrayList<>();
        books = service.getBooks1();
        if (books.size() > 0) {
            ActionContext.getContext().getSession().put("booklist",books);
            return "success";

        } else {
            return "fail";
        }
    }

    public String searchByName(){ ///注意书的内容改变了
       // System.out.println("出现searchByName");
        List<Book> books=new ArrayList<>();
        books=service.getBooksByName(book_name);
        if (books.size() > 0) {
            ActionContext.getContext().getSession().put("booklist",books);
            return "success";
        } else {
            return "fail";
        }
    }

    public String displayBookKindAction(){
        //       查找所有书
        List<Book> books =new ArrayList<>();
        books = service.getBooksByKind(book_type);
        if (books.size() > 0) {
            ActionContext.getContext().getSession().put("booklist",books);
            return "success";

        } else {
            return "fail";
        }
    }
    public String displayBookLoginKindAction(){
        //       查找所有书
        List<Book> books =new ArrayList<>();
        books = service.getBooksByKind(book_type);
        if (books.size() > 0) {
            ActionContext.getContext().getSession().put("booklist",books);
            return "success";

        } else {
            ActionContext.getContext().getSession().put("errmeg","还没有该类图书~");
            return "fail";
        }
    }

}
