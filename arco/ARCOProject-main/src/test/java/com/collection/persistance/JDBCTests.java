package com.collection.persistance;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

import lombok.extern.log4j.Log4j;

@Log4j
public class JDBCTests {

	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Test
	public void testConnection() {

		try (Connection con = DriverManager.getConnection("jdbc:mysql://arcodb.cpmuwg7pndtk.ap-northeast-2.rds.amazonaws.com:3306/arcodb", "arco_admin", "arco1234")) {
			log.info(con);
		} catch (Exception e) {
			fail(e.getMessage());
		}
	}

}
