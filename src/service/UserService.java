package service;

import beans.User;

public interface UserService {
    /**
     * @param user
     * @return
     */
    User getUser(User user);

    /**
     * @param user
     * @return
     */
    User getUser_forget(User user);
    /**
     * @param user
     * @return
     */
    boolean checkUsername(User user);

    /**
     * @param user
     */
    void saveUser(User user);
    /**
     * @param user
     */

    int  updateUser(User user);
}
