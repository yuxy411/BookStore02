package dao.impl;

import beans.User;
import dao.BaseDao;
import dao.UserDao;

/**
 * userDao 接口的实现类
 */
public class UserDaoImpl  extends BaseDao<User> implements UserDao {


    /**
     * @param user
     * @return 根据用户名和密码从数据库中获取用户信息
     */
    @Override
    public User getUser(User user) {
        String sql="select id,username,password,email from users where username=? and password=?";
        User bean = getBean(sql, user.getUsername(), user.getPassword());
        return bean;
    }

    @Override
    public User getUser_forget(User user) {
        String sql="select id,username,password,email from users where username=? and email=?";
        User bean = getBean(sql, user.getUsername(), user.getEmail());
        return bean;
    }

    @Override
    public boolean checkUsername(User user) {
        String sql="select id,username,password,email from users where username=?";
        User bean = getBean(sql, user.getUsername());
        return bean!=null;
    }

    @Override
    public void saveUser(User user) {

        String sql="insert into users(username,password,email) values(?,?,?)";
        update(sql,user.getUsername(),user.getPassword(),user.getEmail());

    }

    @Override
    public int updateUser(User user) {
        String sql=" update users  set password=? where username=?";
        int t=update(sql,user.getPassword(),user.getUsername());
        return t;
    }
}
