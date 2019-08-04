package Actions;

import beans.User;
import com.opensymphony.xwork2.ActionContext;
import service.UserService;
import service.impl.UserServiceImpl;

public class QuestionAction {
    private String username;
    private String email;
    private String password;

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

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }



    public String forget(){    //忘记密码通过邮箱验证的action
      UserService userService=new UserServiceImpl();
      User user=new User(username,"",email);
      User bean  = userService.getUser_forget(user);
       // System.out.println("email2="+bean.getEmail());
        if(bean!=null){  //该用户存在，验证成功，重定向到重置密码页面
            ActionContext ctx=ActionContext.getContext();
            ctx.getSession().put("userName",bean.getUsername());
            ctx.getSession().put("userId",bean.getId());
            return "forget_success";
        }
        else {
            ActionContext ctx=ActionContext.getContext();
            ctx.getSession().put("message","找回密码失败！");
            return "forget";
//
        }
     }

    public String reSet()
    {   //重置密码的acton  更新该用户信息

        UserService userService=new UserServiceImpl();
        User user=new User(username,password);
        int t = userService.updateUser(user);
        System.out.println("t="+t);
        if(t>0){  //该用户密码重置成功，可以跳转到登录界面了
            System.out.println("reSet_success");
               return "reSet_success";
        }
        else {
            System.out.println("reSet");
            ActionContext ctx=ActionContext.getContext();
            ctx.getSession().put("message","重置密码失败！");
            return "reSet";
//
        }
    }

}
