package beans;

import java.io.Serializable;

public class User implements Serializable {
    private int id;
    private  String username;
    private  String password;
    private  String email;

    public User(String username, String password) {
        this.username = username;
        this.password = password;

    }

    public User(String username, String password,String email) {
        this.username = username;
        this.password = password;
        this.email=email;
    }

    public User() {
    }

    public int getId() {
        return id;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public String getEmail() {
        return email;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setEmail(String email) {
        this.email = email;
    }

}
