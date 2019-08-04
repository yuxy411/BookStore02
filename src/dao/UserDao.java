package dao;

import beans.User;



public interface UserDao {


    /**
     * @param user
     * @return  User 存在该用户 null 不存在该用户
     * 根据用户名和密码查询数据库中的用户信息
     */
    User getUser(User user);
    User getUser_forget(User user);

    /**
     * @param user
     * @return user 该用户名已存在  null 数据库中不存在改用户名
     * 根据用户名查询用户
     */
    boolean checkUsername(User user);

    /**
     * @param user
     * 将用户信息插入到数据库中
     */
    void saveUser(User user);

    /**
     * @param user 更新页面
     * @return  是否成功的int值
     */
    int updateUser(User user);
}
