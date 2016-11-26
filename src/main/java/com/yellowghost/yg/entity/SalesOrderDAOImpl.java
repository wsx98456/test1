package com.yellowghost.yg.entity;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;







//import com.mysql.jdbc.Statement;
import com.yellowghost.yg.entity.Product;
import com.yellowghost.yg.entity.ShoppingBean;
import com.yellowghost.yg.dao.SalesOrderDAO;

public class SalesOrderDAOImpl implements SalesOrderDAO{
	private DataSource dataSource;
	private Connection conn = null ;
	private ResultSet rs = null ;
	private PreparedStatement smt = null ;
	
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	public List<Temp_export> getList(){
		String sql = "SELECT * FROM salesorder";
		return getList(sql);
	}
	
	public List<Temp_export> getList(String sql) {
		
		List<Temp_export> productList = new ArrayList<Temp_export>();
		try {		
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql); 
			rs = smt.executeQuery();
			while(rs.next()){
				Temp_export aProduct = new Temp_export();		
				aProduct.setId(rs.getInt("Order_id"));
				aProduct.setMemid(rs.getInt("memid"));
				aProduct.setDate(rs.getDate("OrderTime"));
				aProduct.setTotal(rs.getInt("total_price"));
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
	

	@SuppressWarnings("null")
	public int sellProduct(ShoppingBean pList,int id) throws SQLException {
		    
		if (pList.count() == 0){
			System.out.println("this cart got nothing");
			return 0; // if nothing in the shopping cart
		}
		long orderID = 0;
		int result = 0;
		int count = 0; // count how many sales order items were processed successfully
		
	    PreparedStatement stCreateOrder = null;
		PreparedStatement stUpdateProduct = null;
		PreparedStatement stInsertOrderItem = null;


		try {
		      
			//Connect to a database
			conn = dataSource.getConnection();
			conn.setAutoCommit(false); //make it a transaction
			
		/*	
			smt = conn.prepareStatement("SELECT IDENTITY(int,1,5)");
			ResultSet rs = smt.executeQuery();
		      if (rs != null && rs.next()) {
		    	  orderID = rs.getInt(1);
		      }
		      smt.close();
		      System.out.println(orderID+"is created");
			
			/*
			String sql = "INSERT INTO salesorder (OrderTime,Order_id) VALUES(Now(),?)";
			smt = conn.prepareStatement(sql);
			
			smt.executeUpdate();
			smt.close();
		    
			*/
			// get order id for MS Access and SQL Server
			
		
		      //System.out.println(orderID+"is created");
			
		      
			// get order id for MySQL
			
			String sqlCreateOrder = "INSERT INTO salesorder (OrderTime, total_price, memid) VALUES(Now(), ?, ?)";
		/*	stUpdateProduct=conn.prepareStatement(sqlCreateOrder);
			stUpdateProduct.setLong(1,pList.total());
			stUpdateProduct.setLong(2,id);
			stUpdateProduct.setLong(3,orderID);
			stUpdateProduct.executeUpdate();*/
			
			stCreateOrder  = conn.prepareStatement(sqlCreateOrder);
			stCreateOrder.setLong(1,pList.total());
			stCreateOrder.setLong(2,id);
		    result = stCreateOrder.executeUpdate();
		   stCreateOrder.close();		    
		   
		   String sqlCreateOrder2 = "SELECT LAST_INSERT_ID() as ord from salesorder";   
		   stCreateOrder  = conn.prepareStatement(sqlCreateOrder2);
		   ResultSet  result2 = stCreateOrder.executeQuery();
		 while(result2.next()){
			 orderID=result2.getInt("ord");
		 }
		 
		  System.out.println("order id form lastid : "+orderID);
		 
		  stCreateOrder.close();
		  
		    for (Product p:pList.getList()){
		    	//the following two SQL have to be done in the same transaction
		    	//Issue a query and get a result
		    	stUpdateProduct = conn.prepareStatement("UPDATE product SET Inventory = Inventory - ? WHERE ProductId = ?");
		    	stUpdateProduct.setLong(1,p.getPurchase());
		    	stUpdateProduct.setLong(2,p.getId());
		    
		    	result = stUpdateProduct.executeUpdate();
		    	stUpdateProduct.close();
		    	//System.out.println(productID+"is updated");
		    	String sqlInsertOrderItem = "INSERT INTO salesOrderItem (SOID, ProductID, Quantity) VALUES(?, ?, ?)";
		    	stInsertOrderItem = conn.prepareStatement(sqlInsertOrderItem);
		    	stInsertOrderItem.setLong(1,orderID);
		    	stInsertOrderItem.setLong(2,p.getId());
		    	stInsertOrderItem.setLong(3,p.getPurchase());
		    	result = stInsertOrderItem.executeUpdate();
		    	stInsertOrderItem.close();
		    	//System.out.println(productID+"is processed");
		    	count ++;
		      }// for all products on the cart
		      
		      conn.commit();
		      conn.close();
		      
		} // try
    	catch (Exception e) {
    		count = 0;
    		e.printStackTrace();
	  		if (conn!= null) { 
	  			try { 
	  				System.err.print("Transaction is being rolled back"); 
	  				conn.rollback(); } 
	  			catch(SQLException excep){
	  				e.printStackTrace(); 
	  			}
	  		}
	    } finally { 
		  	  if (stCreateOrder != null) {
		  	   stCreateOrder.close(); }
		  	  if (stUpdateProduct != null) { 
		  	   stUpdateProduct.close(); }
		  	  if (stInsertOrderItem != null) { 
			  	   stInsertOrderItem.close(); }
		  	  conn.close();
		} 
	    return count;
	} //sellProduct
	
	
public List<SalesOrderItem> getitemList(String sql) {
		
		List<SalesOrderItem> productList = new ArrayList<SalesOrderItem>();
		try {		
			conn = dataSource.getConnection();
			smt = conn.prepareStatement(sql); 
			rs = smt.executeQuery();
			while(rs.next()){
				SalesOrderItem aProduct = new SalesOrderItem();		
				aProduct.setSoid(rs.getInt("SOID"));
				aProduct.setProductid(rs.getInt("ProductID"));
				aProduct.setQuan(rs.getInt("Quantity"));
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



}
