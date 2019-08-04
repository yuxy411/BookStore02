package Actions;

import beans.User;
import com.opensymphony.xwork2.ActionContext;
import service.UserService;
import service.impl.UserServiceImpl;

public class LoginAction{
        private String username;
        private String password;

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

    /**
     * 登录判断
     * @return
     */
    public String login(){
            UserService userService=new UserServiceImpl();
            User user=new User(username,password);
            ActionContext ctx=ActionContext.getContext();
            User bean = userService.getUser(user);
            if(bean!=null){  //该用户存在，重定向到登陆成功页面
               // System.out.println("userId="+bean.getId());
                ctx.getSession().put("userId",bean.getId());
                ctx.getSession().put("username",bean.getUsername());

                return "login_success";
            }
            else {
                return "login";
//
            }

  }

    /**
     * 实现注销功能
     * @return
     */
  public String exit(){
      ActionContext ac = ActionContext.getContext();
//      ac.getSession().remove("username");
      ac.getSession().remove("userId");
      return "success";
  }
  public  String login_cart(){  //用于实现进入购物车之前的登录
        return null;

  }
}
