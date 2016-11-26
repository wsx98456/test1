package com.yellowghost.yg.dao;

import java.sql.SQLException;

import com.yellowghost.yg.entity.ShoppingBean;


public interface SalesOrderDAO {	
	
	public int sellProduct(ShoppingBean pList,int id) throws SQLException;


}
