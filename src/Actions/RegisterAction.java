package Actions;

import beans.User;
import com.opensymphony.xwork2.ActionContext;
import service.UserService;
import service.impl.UserServiceImpl;

import javax.servlet.http.HttpSession;
import java.util.Map;

public class RegisterAction {
    private String username;
    private  String password;
    private String email;
    private String resCode;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getResCode() {
        return resCode;
    }

    public void setResCode(String resCode) {
        this.resCode = resCode;
    }

    //关键方法 验证注册 并实现注册功能的方法
    public String register(){

        UserService userService=new UserServiceImpl();
        User user=new User(username,password,email);
        boolean flag=userService.checkUsername(user);
        System.out.println("username="+username);
        ActionContext actionContext = ActionContext.getContext();
        Map params = actionContext.getParameters();
        String code =resCode; //(String) params.get("resCode");
     //   if(resCode.equals(code) && resCode!=null){ //验证码输入成功
            if(flag){ //该用户已经存在了，就不容许在注册
                System.out.println("该用户已经存在了，就不容许在注册");
                actionContext.put("message","用户名已存在！");
               return "regist";

            }
            else {
                System.out.println("用户不存在 可以注册");
                userService.saveUser(user);
               return "regist_success";

            }
//        }else {
//            //验证码输入错误
//            actionContext.put("message","验证码输入错误！");
//            return "regist";
//
//        }


    }
}
