package com.yellowghost.yg.dao;

import java.sql.SQLException;
import java.util.List;

import com.yellowghost.yg.entity.Product;
import com.yellowghost.yg.entity.PurchaseOrder;


public interface PurchaseOrderDAO {	
	
	public void create(Product aProduct, int qty);
	public List<PurchaseOrder> getList();
	public int stockProduct(long poid) throws SQLException;
	

}
