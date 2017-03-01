package cn.utils;

import java.sql.Connection;

import javax.sql.DataSource;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class DSUtils {
	private static DataSource ds;

	static {
		ds = new ComboPooledDataSource();
	}

	public static DataSource getDataSource() {
		return ds;
	}

	public static Connection getConnection() {
		Connection con = null;
		try {
			con = ds.getConnection();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return con;
	}
}
