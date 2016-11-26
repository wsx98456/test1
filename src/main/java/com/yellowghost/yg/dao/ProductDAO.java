package com.yellowghost.yg.dao;

import java.util.List;

import com.yellowghost.yg.entity.Product;

public interface ProductDAO {
	
	public List<Product> getList();
	
	public void insert(Product aProduct);

	public Product get(long id);
	public List<Product> getReorderList();
	public void update(Product aProduct);
	public List<Product> getAvailableList();
	public void delete(long id);

	public int count();
}
