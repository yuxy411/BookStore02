package dao;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import org.apache.commons.dbutils.handlers.ScalarHandler;
import utils.JDBCUtils;
import utils.JdbcPool;


/**
 * 定义一个用来被继承的对数据库进行基本操作的Dao
 * 
 * @author HanYanBing
 *
 * @param <T>
 */
public abstract class BaseDao<T> {
	private QueryRunner queryRunner = new QueryRunner();
	//定义一个变量来接收泛型的类型
	private Class<T> type;
	// 获取T的Class对象，获取泛型的类型，泛型是在被子类继承时才确定
	public BaseDao() {
		//获取子类的类型
		Class clazz = this.getClass();
		//获取父类的类型
		//getGenericSuperclass()用来获取当前类的父类的类型
		//ParameterizedType表示的是带泛型的类型
		ParameterizedType parameterizedType = (ParameterizedType) clazz.getGenericSuperclass();
		//获取具体的泛型类型 getActualTypeArguments获取具体的泛型的类型
		//这个方法会返回一个Type的数组
		Type[] types = parameterizedType.getActualTypeArguments();
		//获取具体的泛型的类型·
		this.type = (Class<T>) types[0];
	}
	
	/**
	 * 通用的增删改操作
	 * 
	 * @param sql
	 * @param params
	 * @return
	 */
	public int update(String sql, Object... params) {
		// 获取连接
		Connection connection = JDBCUtils.getConnection();
		int count = 0;
		try {
			count = queryRunner.update(connection, sql, params);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				JDBCUtils.releaseConnection(connection,null,null);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return count;
	}

	/**
	 * 获取一个对象
	 * 
	 * @param sql
	 * @param params
	 * @return
	 */
	public T getBean(String sql, Object... params) {
		// 获取连接
		Connection connection = JDBCUtils.getConnection();
		T t = null;
		try {
			t = queryRunner.query(connection, sql, new BeanHandler<T>(type),
					params);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				JDBCUtils.releaseConnection(connection,null,null);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return t;
	}

	/**
	 * 获取所有对象
	 * @param sql
	 * @param params
	 * @return
	 */
	public List<T> getBeanList(String sql, Object... params) {
		// 获取连接
		Connection connection = JDBCUtils.getConnection();
		List<T> list = null;
		try {
			list = queryRunner.query(connection, sql, new BeanListHandler<T>(
					type), params);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				JDBCUtils.releaseConnection(connection,null,null);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}

	public Object getSingleValue(String sql, Object... params) throws SQLException {
		Object count=null;
		//获取连接
		Connection conn=JDBCUtils.getConnection();
		//调用queryRunner的query的query方法的获取一个单一的值
		count = queryRunner.query(conn, sql, new ScalarHandler<>(), params);
		JDBCUtils.releaseConnection(conn,null,null);
		return count;
	}
	
}
