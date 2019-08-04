package utils;


import java.io.InputStream;
import java.sql.*;
import java.util.Properties;

public class JDBCUtils {
    public static Connection getConnection() {
        Connection conn=null;
        String userName="";
        String url="";
        InputStream is= JDBCUtils.class.getResourceAsStream("jdbc.properties");
        Properties pros=new Properties();
        try {
            pros.load(is);
            String driverClass=pros.getProperty("driverClass");
            url=pros.getProperty("url");
            userName=pros.getProperty("userName");
            String password=pros.getProperty("password");
            Class.forName(driverClass);
            url=url+"?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
            conn= DriverManager.getConnection(url,userName,password);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return conn;
    }
    public static  void releaseConnection(Connection conn, PreparedStatement pstm, ResultSet rs) throws SQLException {
        if(rs!=null){
            rs.close();
        }
        if(pstm!=null){
            pstm.close();
        }
        if(conn!=null){
            conn.close();
        }

    }
}
