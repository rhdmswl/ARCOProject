package com.collection.controller;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class CollectionDao {
	Connection con = null;
	
	public CollectionDao() {
		//driver connection
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	//collection all print -> list
	public List<CollectionDto> selectAll(){
		//db acount connection
		try {
			con = DeriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","id","pw");
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		Statement stmt = null;
		ResultSet rs = null;
		List<CollectionDto> res = new ArrayList<BoardDto>();
		
		String sql = "SELECT * FROM COLLECTION";
		
		//sql query start
		try {
			stmt = con.createStatement();
			
			//query log save at rs
			rs = stmt.executeQuery(sql);
			
			//rs, dto save
			while(rs.next()) {
				CollectionDto dto = new CollectionDto(rs.getInt(1), rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5));

				res.add(dto);
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				rs.close();
				stmt.close();
				con.close();
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return res;
	}

}
