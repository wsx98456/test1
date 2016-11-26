package com.yellowghost.yg.entity;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import java.util.List;

import javax.sql.DataSource;


public class MemberListDB {
	
	private DataSource dataSource;
	private Connection conn = null;
	private ResultSet rs = null;
	private PreparedStatement smt = null;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	
	public MemberListDB() {
	}

	public List<Member> getList() {
		String sql = "SELECT * FROM member";
		return getList(sql);
	}

	public List<Member> getList(String sql) {

		List<Member> productList = new ArrayList<Member>();
		try {
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql);
			rs = smt.executeQuery();
			while (rs.next()) {
				Member aProduct = new Member();
				aProduct.setName(rs.getString("name"));
				aProduct.setPass(rs.getString("pass"));
				aProduct.setAdd(rs.getString("address"));
				
				productList.add(aProduct);
			}
			rs.close();
			smt.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);

		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
				}
			}
		}
		return productList;
	}

	public Member get(long id) {
		Member aProduct = new Member();
		String sql = "SELECT * FROM member WHERE memid = ?";
		try {
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql);
			smt.setLong(1, id);
			rs = smt.executeQuery();
			if(rs.next()){
				aProduct.setId(rs.getInt("memid"));
				aProduct.setName(rs.getString("name"));
				aProduct.setPass(rs.getString("pass"));
				aProduct.setAdd(rs.getString("address"));
			}
			rs.close();
			smt.close();
 
		} catch (SQLException e) {
			throw new RuntimeException(e);
 
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {}
			}
		}
		return aProduct;
	}
	
	
	public int add(Member m) {

		// remove first parameter when Id is auto-increment
		String sql = "INSERT INTO member (name, pass, address) VALUES(?, ?, ?)";
		String sql2 = "SELECT LAST_INSERT_ID() as mid from member"; 
		int mid=0;
		try {
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql);

			smt.setString(1, m.getName());
			smt.setString(2, m.getPass());
			smt.setString(3, m.getAdd());
			smt.executeUpdate();
			smt.close();

			
			smt = conn.prepareStatement(sql2);
			   ResultSet  result2 = smt.executeQuery();
			 while(result2.next()){
				 mid=result2.getInt("mid");
			 }
			
			
		} catch (SQLException e) {
			throw new RuntimeException(e);

		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
				}
			}
		}
		return mid;
	}

	public void delete(long id) {

		String sql = "DELETE FROM member WHERE id = ?";
		try {
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql);
			smt.executeUpdate();
			smt.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);

		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
				}
			}
		}
	}

	public int ifmem(String name, String pass) {
		String sql ="select * from member where name='"+name+"'and pass='" + pass + "'";
		int end = -1;
		try {
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql);
			rs = smt.executeQuery();
			while (rs.next()) {
				end=rs.getInt("memid");		
			}
			rs.close();
			smt.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);

		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
				}
			}
		}
		return end;
	}
	

}
