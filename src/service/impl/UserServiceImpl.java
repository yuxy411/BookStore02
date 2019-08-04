package service.impl;

import beans.User;
import dao.UserDao;
import dao.impl.UserDaoImpl;
import service.UserService;

public class UserServiceImpl implements UserService {
    private UserDao userDao=new UserDaoImpl();
    @Override
    public User getUser(User user) {
        User bean = userDao.getUser(user);
        return bean;
    }

    @Override
    public User getUser_forget(User user) {
        User bean = userDao.getUser_forget(user);
        return bean;
    }

    @Override
    public boolean checkUsername(User user) {
        boolean b = userDao.checkUsername(user);
        return b;  //b为真，说明该用户存在
    }

    @Override
    public void saveUser(User user) {
        userDao.saveUser(user);

    }

    @Override
    public int updateUser(User user) {
//        System.out.println(user.getUsername()+"  "+user.getPassword());admin5  123 没问题
       int t= userDao.updateUser(user);
        System.out.println("  int t= userDao.updateUser(user);"+t);
        return t;
    }
}
