/**
 * sample program for web programming written by Ben Wu
 * reference: http://www.mkyong.com/spring/maven-spring-jdbc-example/
 */
package com.yellowghost.yg.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

import javax.sql.DataSource;

import com.yellowghost.yg.entity.Product;

public class ProductDAODB implements ProductDAO {
	private DataSource dataSource;
	private Connection conn = null ;
	private ResultSet rs = null ;
	private PreparedStatement smt = null ;
	
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public List<Product> getList(){
		String sql = "SELECT * FROM product";
		return getList(sql);
	}

	// make it a generic method for different conditions
	public List<Product> getList(String sql) {
					
		List<Product> productList = new ArrayList<Product>();
		try {
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql); 
			rs = smt.executeQuery();
			while(rs.next()){
				Product aProduct = new Product();		
				aProduct.setDis_date(rs.getDate("Dis_date"));
				aProduct.setRel_date(rs.getDate("Rel_date"));
				aProduct.setDis_price(rs.getInt("Dis_price"));
				aProduct.setModel(rs.getString("Model"));
				aProduct.setId(rs.getInt("ProductID"));
				aProduct.setPath(rs.getString("Path"));
				aProduct.setPrice(rs.getInt("Price"));
				aProduct.setCategory(rs.getString("Category"));
				aProduct.setName(rs.getString("Name"));
				aProduct.setSafe_inventory(rs.getInt("Safe_inventory"));
				aProduct.setInventory(rs.getInt("Inventory"));
				aProduct.setBrand(rs.getString("Brand"));
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
				} catch (SQLException e) {}
			}
		}
		return productList;
	}
	
	public List<Product> getReorderList() {
		String sql = "SELECT * FROM product WHERE Inventory < Safe_inventory";
		return getList(sql);
	}
	public List<Product> getAvailableList() {
		String sql = "SELECT * FROM product WHERE Inventory > 0";
		return getList(sql);
	}
	

	public void insert(Product aProduct) {

		// remove first parameter when Id is auto-increment
	    String sql = "INSERT INTO product (Category, Name, Brand, Model, Inventory,Safe_inventory, Price, Path, Rel_date, Dis_price, Dis_date) VALUES(?, ?, ?, ?, ?, ?, ?, ?, Now(), ?, ?)";	
		try {
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql);
			smt.setString(1, aProduct.getCategory());
			smt.setString(2, aProduct.getName());
			smt.setString(3,aProduct.getBrand());
			smt.setString(4, aProduct.getModel());
			smt.setInt(5, aProduct.getInventory());
			smt.setInt(6, aProduct.getSafe_inventory());
			smt.setInt(7, aProduct.getPrice());
			smt.setString(8, aProduct.getPath());
			smt.setInt(9, aProduct.getDis_price());
			smt.setDate(10, aProduct.getDis_date());
			smt.executeUpdate();			
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
		
	}

	public Product get(long id) {
		Product aProduct = new Product();
		String sql = "SELECT * FROM product WHERE productID = ?";
		try {
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql);
			smt.setLong(1, id);
			rs = smt.executeQuery();
			if(rs.next()){
				aProduct.setDis_date(rs.getDate("Dis_date"));
				aProduct.setRel_date(rs.getDate("Rel_date"));
				aProduct.setDis_price(rs.getInt("Dis_price"));
				aProduct.setModel(rs.getString("Model"));
				aProduct.setId(rs.getInt("ProductID"));
				aProduct.setPath(rs.getString("Path"));
				aProduct.setPrice(rs.getInt("Price"));
				aProduct.setCategory(rs.getString("Category"));
				aProduct.setName(rs.getString("Name"));
				aProduct.setSafe_inventory(rs.getInt("Safe_inventory"));
				aProduct.setInventory(rs.getInt("Inventory"));
				aProduct.setBrand(rs.getString("Brand"));
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
		System.out.println("aaaaa   "+aProduct.getId());
		return aProduct;
	}
	
	public void update(Product aProduct) {
		
		String sql = "UPDATE product SET Category=?, Name=?, Brand=?, Model=?, Inventory=? ,Safe_inventory=? ,Price=? , Path=?, Rel_date=?, Dis_price=?, Dis_date=? "
				+ "WHERE productID = ?";
		try {
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql);
			smt.setString(1, aProduct.getCategory());
			smt.setString(2, aProduct.getName());
			smt.setString(3,aProduct.getBrand());
			smt.setString(4, aProduct.getModel());
			smt.setInt(5, aProduct.getInventory());
			smt.setInt(6, aProduct.getSafe_inventory());
			smt.setInt(7, aProduct.getPrice());
			smt.setString(8, aProduct.getPath());
			smt.setDate(9, aProduct.getRel_date());
			smt.setInt(10, aProduct.getDis_price());
			smt.setDate(11, aProduct.getDis_date());
			smt.setLong(12, aProduct.getId());
			smt.executeUpdate();			
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
		
	}
	
	public void delete(long id) {
		
		String sql = "DELETE FROM product WHERE productID = ?";
		try {
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql);
			smt.setLong(1, id);
			smt.executeUpdate();			
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
	}

	
	public int count(){
		return 0; //no longer needed
	}

	public List<Product> searchPro(String pro,String con) {
		String sql = "select * from product where Name Like '%"+pro+"%'";
		System.out.println(sql);
		List<Product> productList = new ArrayList<Product>();
		try {
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql);
			rs = smt.executeQuery();
			while(rs.next()){
				Product aProduct = new Product();
				aProduct.setDis_date(rs.getDate("Dis_date"));
				aProduct.setRel_date(rs.getDate("Rel_date"));
				aProduct.setDis_price(rs.getInt("Dis_price"));
				aProduct.setModel(rs.getString("Model"));
				aProduct.setId(rs.getInt("ProductID"));
				aProduct.setPath(rs.getString("Path"));
				aProduct.setPrice(rs.getInt("Price"));
				aProduct.setCategory(rs.getString("Category"));
				aProduct.setName(rs.getString("Name"));
				aProduct.setSafe_inventory(rs.getInt("Safe_inventory"));
				aProduct.setInventory(rs.getInt("Inventory"));
				aProduct.setBrand(rs.getString("Brand"));
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
				} catch (SQLException e) {}
			}
		}
		if(con.contains("PA")){this.pa(productList);}
		if(con.contains("PD")){this.pd(productList);}
		if(con.contains("DA")){this.da(productList);}
		if(con.contains("DD")){this.dd(productList);}
		
		
		return productList;
	}
	public List<Product> searchcat(String cat,String con) {
		String sql = "select * from product where Category ='" +cat+"'";
		System.out.println("dsadsadasda    "+cat);
		List<Product> productList = new ArrayList<Product>();
		try {
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql);
			rs = smt.executeQuery();
			while(rs.next()){
				Product aProduct = new Product();
				aProduct.setDis_date(rs.getDate("Dis_date"));
				aProduct.setRel_date(rs.getDate("Rel_date"));
				aProduct.setDis_price(rs.getInt("Dis_price"));
				aProduct.setModel(rs.getString("Model"));
				aProduct.setId(rs.getInt("ProductID"));
				aProduct.setPath(rs.getString("Path"));
				aProduct.setPrice(rs.getInt("Price"));
				aProduct.setCategory(rs.getString("Category"));
				aProduct.setName(rs.getString("Name"));
				aProduct.setSafe_inventory(rs.getInt("Safe_inventory"));
				aProduct.setInventory(rs.getInt("Inventory"));
				aProduct.setBrand(rs.getString("Brand"));
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
				} catch (SQLException e) {}
			}
		}
		if(con.contains("PA")){this.pa(productList);}
		if(con.contains("PD")){this.pd(productList);}
		if(con.contains("DA")){this.da(productList);}
		if(con.contains("DD")){this.dd(productList);}
		
		return productList;
	}
	public List<Product> searchbrand(String bra,String con) {
		String sql = "select * from product where Brand ='" +bra+"'";
		
		List<Product> productList = new ArrayList<Product>();
		try {
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql);
			rs = smt.executeQuery();
			while(rs.next()){
				Product aProduct = new Product();
				aProduct.setDis_date(rs.getDate("Dis_date"));
				aProduct.setRel_date(rs.getDate("Rel_date"));
				aProduct.setDis_price(rs.getInt("Dis_price"));
				aProduct.setModel(rs.getString("Model"));
				aProduct.setId(rs.getInt("ProductID"));
				aProduct.setPath(rs.getString("Path"));
				aProduct.setPrice(rs.getInt("Price"));
				aProduct.setCategory(rs.getString("Category"));
				aProduct.setName(rs.getString("Name"));
				aProduct.setSafe_inventory(rs.getInt("Safe_inventory"));
				aProduct.setInventory(rs.getInt("Inventory"));
				aProduct.setBrand(rs.getString("Brand"));
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
				} catch (SQLException e) {}
			}
		}
		if(con.contains("PA")){this.pa(productList);}
		if(con.contains("PD")){this.pd(productList);}
		if(con.contains("DA")){this.da(productList);}
		if(con.contains("DD")){this.dd(productList);}
		
		return productList;
	}
	public List<Product> pa(List<Product> p) {
		p.sort(new Priceasc());	
		return p;
	}	
	public List<Product> pd(List<Product> p) {
		p.sort(new Pricedesc());	
		return p;

	}	
	public List<Product> da(List<Product> p) {
		p.sort(new Dateasc());	
		return p;
	}	
	public List<Product> dd(List<Product> p) {
		p.sort(new Datedesc());	
		return p;
	}	
}//ProductDAOBean
     class Dateasc implements Comparator<Product>{
		public int compare(Product a,Product b) {
			return a.getRel_date().compareTo(b.getRel_date());
		}
     }
     class Datedesc implements Comparator<Product>{
 		public int compare(Product a,Product b) {
 			return -a.getRel_date().compareTo(b.getRel_date());
 		}
      }
     class Priceasc implements Comparator<Product>{
 		public int compare(Product a,Product b) {
 			return a.getDis_price()-b.getDis_price();
 		}
      }
     class Pricedesc implements Comparator<Product>{
 		public int compare(Product a,Product b) {
 			return b.getDis_price()-a.getDis_price();
 		}
      }
 
