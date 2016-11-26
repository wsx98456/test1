package com.yellowghost.yg.dao;

import java.util.ArrayList;
import java.util.List;

import com.yellowghost.yg.entity.Product;

//using List<Product> to store product
public class ProductDAOBean implements ProductDAO {
	private List<Product> productList = new ArrayList<Product>();
	
	public ProductDAOBean(){
		Product temp = new Product();
		temp.setId(0);
		temp.setBrand("apple");
		temp.setModel("aaa0");
		temp.setName("aaa");
		temp.setPrice(80);
		temp.setCategory("電腦");
		temp.setInventory(1555);
		productList.add(temp);
		
		temp = new Product();
		temp.setId(1);
		temp.setBrand("apple");
		temp.setModel("aaa0");
		temp.setName("bbb");
		temp.setPrice(80);
		temp.setCategory("電腦");
		temp.setInventory(9634);
		productList.add(temp);
		
		temp = new Product();
		temp.setId(2);
		temp.setBrand("apple");
		temp.setModel("aaa0");
		temp.setName("ccc");
		temp.setPrice(80);
		temp.setCategory("電腦");
		temp.setInventory(1760);
		productList.add(temp);
		
		temp = new Product();
		temp.setId(3);
		temp.setBrand("apple");
		temp.setModel("aaa0");
		temp.setName("ddd");
		temp.setPrice(80);
		temp.setCategory("電腦");
		temp.setInventory(3850);
		productList.add(temp);
		
		temp = new Product();
		temp.setId(4);
		temp.setBrand("apple");
		temp.setModel("aaa0");
		temp.setName("eee");
		temp.setPrice(900);
		temp.setCategory("電腦");
		temp.setInventory(20);
		productList.add(temp);
		
		temp = new Product();
		temp.setId(5);
		temp.setBrand("apple");
		temp.setModel("aaa0");
		temp.setName("fff");
		temp.setPrice(1290);
		temp.setCategory("電腦");
		temp.setInventory(20);
		productList.add(temp);
		
		temp = new Product();
		temp.setId(6);
		temp.setBrand("apple");
		temp.setModel("ggg");
		temp.setName("iPad");
		temp.setPrice(5000);
		temp.setCategory("電腦");
		temp.setInventory(20);
		productList.add(temp);

	}

	public List<Product> getList(){
		return productList;
	}
	public void insert(Product aProduct){
		productList.add(aProduct);
	}

	public Product get(long id){
		return productList.get((int)id); 
	}
	
	public void update(Product aProduct){
		int id = (int)aProduct.getId();
		productList.set(id, aProduct);
	}
	
	public void delete(long id){
		productList.remove((int)id);
		// loop through the productList to reset id
		for (int i = 0; i< productList.size(); i++){
			productList.get(i).setId(i);
		}	
	}

	public int count(){
		return productList.size();
	}

	@Override
	public List<Product> getReorderList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> getAvailableList() {
		// TODO Auto-generated method stub
		return null;
	}
	

}//ProductDAOBean

