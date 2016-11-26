package com.yellowghost.yg.controller;

//import java.util.ArrayList;
import java.io.File;
import java.io.IOException;
import java.net.InetAddress;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.method.annotation.RequestParamMethodArgumentResolver;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.yellowghost.yg.entity.Member;
import com.yellowghost.yg.entity.MemberListDB;
import com.yellowghost.yg.entity.Product;
import com.yellowghost.yg.entity.PurchaseOrder;
import com.yellowghost.yg.entity.PurchaseOrderDAOImpl;
import com.yellowghost.yg.entity.SalesOrderDAOImpl;
import com.yellowghost.yg.entity.SalesOrderItem;
import com.yellowghost.yg.entity.ShoppingBean;
import com.yellowghost.yg.entity.Temp_export;

import jdk.nashorn.internal.ir.RuntimeNode.Request;

import com.yellowghost.yg.dao.ProductDAO;
import com.yellowghost.yg.dao.ProductDAODB;
import com.yellowghost.yg.dao.PurchaseOrderDAO;
import com.yellowghost.yg.dao.SalesOrderDAO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ProductController {

	
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
	ApplicationContext context = new ClassPathXmlApplicationContext("beans.xml");
	ApplicationContext context2 =  new ClassPathXmlApplicationContext("sales.xml");
	ApplicationContext context3 = new ClassPathXmlApplicationContext("shopping.xml");
	//ApplicationContext context2 = new ClassPathXmlApplicationContext("beans2.xml");
	ApplicationContext context4 = new ClassPathXmlApplicationContext("tem_export.xml"); 
	ApplicationContext context5 = new ClassPathXmlApplicationContext("memberlist.xml");
	ApplicationContext context6 = new ClassPathXmlApplicationContext("purchase.xml");
	private long ff;
	private boolean log=false;
	private Member tem_mem =new Member();
	/*@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView index(){
		ModelAndView model = new ModelAndView("home");
		return model;
		//return getProductList();
	}//getProductList
*/
	 
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView getProductList(){
		ModelAndView model = new ModelAndView("home");
		
		model.addObject("log",this.log);
		
		
		
		ProductDAO dao = (ProductDAO) context.getBean("productDAO");
		List<Product> list = dao.getList();
		model.addObject("productList",list);
		model.addObject("dog",true);
		return model;
	}//getProductList
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView home(){
		ModelAndView model = new ModelAndView("home");
		model.addObject("log",this.log);
		
		ProductDAO dao = (ProductDAO) context.getBean("productDAO");
		List<Product> list = dao.getList();
		model.addObject("productList",list);
		return model;
	}//getProductList
	
	
	/*@RequestMapping(value = "/product", method = RequestMethod.GET)
	public ModelAndView getProductList_user(){
		ModelAndView model = new ModelAndView("product");
		ProductDAO dao = (ProductDAO) context.getBean("productDAO");
		List<Product> list = dao.getList();
		model.addObject(list);
		return model;
	}//getProductList
	*/
	
	@RequestMapping(value = "/index2", method = RequestMethod.GET)
	public ModelAndView index2(){	
			ModelAndView model3 = new ModelAndView("log");	
			return model3;	
	}
	
	
	@RequestMapping(value = "/index2", method = RequestMethod.POST)
	public ModelAndView index2(@ModelAttribute("int2")String int2,@ModelAttribute("accountname")String accountname){	
		if(int2.matches("22")& accountname.matches("sa")){
	return manage();
		}
		else{
			ModelAndView model3 = new ModelAndView("redirect:/home");	
			return model3;
		}
	}
	
	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public ModelAndView manage(){
		ModelAndView model = new ModelAndView("product");
		ProductDAO dao = (ProductDAO) context.getBean("productDAO");
		List<Product> list = dao.getList();
		model.addObject("productList",list);
		return model;
	}
	
	@RequestMapping(value = "/insertProduct", method = RequestMethod.GET)
	public ModelAndView insertProductPage(@ModelAttribute Product product){
		ModelAndView model = new ModelAndView("insertProduct");
		return model;}
//insertProductPage
	
		@RequestMapping(value = "/insertProduct", method = RequestMethod.POST)
	public ModelAndView insertProduct(@ModelAttribute Product product){
		ModelAndView model = new ModelAndView("redirect:/product");	
		ProductDAO dao = (ProductDAO) context.getBean("productDAO");
		product.setId(dao.count());
		dao.insert(product);
		return model;
	}//insertProduct
		
		
	@RequestMapping(value = "/updateProduct", method = RequestMethod.GET)
	public ModelAndView up(@ModelAttribute Product product){
		ProductDAO dao = (ProductDAO) context.getBean("productDAO");
		Product p = dao.get(product.getId());
		
		
		ModelAndView model = new ModelAndView("updateProduct");
		model.addObject(p);
		
		return model;
		}
		//upProduct
	
	@RequestMapping(value = "/updateProduct", method = RequestMethod.POST)
public ModelAndView updateProduct(@ModelAttribute Product product){
	ModelAndView model = new ModelAndView("redirect:/product");	
	ProductDAO dao = (ProductDAO) context.getBean("productDAO");
	dao.update(product);
	return model;
}//upProduct
	
	
	@RequestMapping(value = "/deleteProduct", method = RequestMethod.GET)
	public ModelAndView deProduct(@ModelAttribute Product product){
		ModelAndView model = new ModelAndView("redirect:/product");	
		ProductDAO dao = (ProductDAO) context.getBean("productDAO");
		dao.delete(product.getId());
		return model;
		}		
	//deProduct

	@RequestMapping(value = "/user", method = RequestMethod.GET)
	public ModelAndView user(@ModelAttribute ShoppingBean s,@ModelAttribute Product product){
		ModelAndView model = new ModelAndView("user");
		
		ProductDAO dao = (ProductDAO) context.getBean("productDAO");	
	   ShoppingBean shopping = (ShoppingBean)context3.getBean("shopping");	
	 
	   model.addObject("me",dao.get(product.getId()).getPath()); 
		
	   
	   List<Product> list = dao.getList();
		model.addObject(list);
		return model;
	}

	@RequestMapping(value = "/addcart", method = RequestMethod.GET)
	public void addcart(@ModelAttribute ShoppingBean s,@ModelAttribute Product product,@ModelAttribute("id") int id){
		ShoppingBean shopping = (ShoppingBean)context3.getBean("shopping");	
		ProductDAO dao = (ProductDAO) context.getBean("productDAO");
		shopping.insert(dao.get(id));	
	}
	
	
	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public ModelAndView cart(){
		
		ModelAndView model = new ModelAndView("cart");
		model.addObject("log",this.log);
		ShoppingBean shopping = (ShoppingBean)context3.getBean("shopping");	
		List<Product> list = shopping.getList();
		
		System.out.print(list.size());
		model.addObject("productList2",list);
		model.addObject("total",shopping.total());
		model.addObject("size",list.size());
		
		return model;
	}
	
	
	
	
	
	@RequestMapping(value = "/decart", method = RequestMethod.GET)
	public ModelAndView decart(@ModelAttribute ShoppingBean s,@ModelAttribute("id")int id){
		ShoppingBean shopping = (ShoppingBean)context3.getBean("shopping");	
		
		shopping.delete(id);
		ModelAndView model = new ModelAndView("redirect:/cart");
		return model;
		}
		
	@RequestMapping(value = "/uploadimage", method = RequestMethod.GET)
	public ModelAndView uploadimage(@ModelAttribute Product product) {
		
		 ProductDAO dao = (ProductDAO) context.getBean("productDAO");
		 Product p = dao.get(product.getId());
		 ff = p.getId();
		 ModelAndView model = new ModelAndView("uploadimage"); 	
		 model.addObject("me",dao.get(ff).getPath());
		 return model;
	}
	

	 @RequestMapping(value = "/uploadimage", method = RequestMethod.POST)
	    public ModelAndView uploadimageHandler(@ModelAttribute("file") MultipartFile file, HttpServletRequest request,@ModelAttribute Product product) {
		 ProductDAO dao = (ProductDAO) context.getBean("productDAO");
		 ModelAndView model = new ModelAndView("uploadimage");  	
	    	//save it as the file name submitted 
		Product pp =dao.get(ff);
		 String name = file.getOriginalFilename();
	        String filePath = "C:\\Users\\wsx98\\workspace\\Yellow\\src\\main\\webapp\\images\\";  
	        model.addObject("me",pp.getPath());
	        File dir = new File(filePath);	        
	        if (!dir.exists()){
	            dir.mkdirs();
	        }	        
	        try {        	
	        	File f = new File(filePath+name);
	            file.transferTo(f);
	            pp.setPath("images/"+f.getName());
	            dao.update(pp);
	            model.addObject("me",f.getAbsolutePath()); 
	            System.out.println("Server File Location="+f.getAbsolutePath()+"   this.id="+ff);
	        } catch (IOException e) {   
	        }           
		 return model;
	 }
	 
		@RequestMapping(value = "/endcart", method = RequestMethod.GET)
		public ModelAndView endcart(){		
		
			ShoppingBean shoppingCart = (ShoppingBean)context3.getBean("shopping");
			SalesOrderDAO salesOrderDAO = (SalesOrderDAO)context2.getBean("salesOrderDAO");
	
			int result = 0;
			if(log==true){
				shoppingCart.setMemid(this.tem_mem.getId());
				ModelAndView model = new ModelAndView("redirect:/memsale");
				try {
				result = salesOrderDAO.sellProduct(shoppingCart,tem_mem.getId());
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if (result != 0){ //successfully updated, clean up shopping cart
				shoppingCart.cleanup();
			}
			return model;
			}
		else{
			ModelAndView model = new ModelAndView("cart");
			model.addObject("log",this.log);
			List<Product> list = shoppingCart.getList();
			System.out.print(list.size());
			model.addObject("productList2",list);
			model.addObject("total",shoppingCart.total());
			model.addObject("size",list.size());
			String dd = "ple log in";
			model.addObject("qqq",dd);
			return model;
		}}
		
		@RequestMapping(value = "/memsale", method = RequestMethod.GET)
		public ModelAndView memsale(){
			
			ModelAndView model = new ModelAndView("memsale");
			ShoppingBean shopping = (ShoppingBean)context3.getBean("shopping");		
			SalesOrderDAOImpl salesOrderDAO = (SalesOrderDAOImpl)context2.getBean("salesOrderDAO");
			
			String sql="select * from salesorder where memid='"+this.tem_mem.getId()+"'";
			List<Temp_export> p= salesOrderDAO.getList(sql);
			System.out.println("member sale list: "+p.size());
			model.addObject("p",p);
			return model;
			}
		
		@RequestMapping(value = "/check", method = RequestMethod.GET)
		public ModelAndView check(){
			ModelAndView model = new ModelAndView("salesOrder");
			SalesOrderDAOImpl salesOrderDAO = (SalesOrderDAOImpl)context2.getBean("salesOrderDAO");
			List<Temp_export> dd = salesOrderDAO.getList();
			model.addObject("dd",dd);
			return model;
			}
		
		@RequestMapping(value = "/export", method = RequestMethod.GET)
		public ModelAndView export(@ModelAttribute ShoppingBean s){
			
			ShoppingBean shopping = (ShoppingBean)context3.getBean("shopping");		
			Temp_export tem = (Temp_export)context4.getBean("temp");		
			ModelAndView model = new ModelAndView("redirect:/temp_export");
			
			return model;
			}
		 
		@RequestMapping(value = "/sign_up", method = RequestMethod.GET)
		public ModelAndView sign_up(@ModelAttribute String a,@ModelAttribute String b,@ModelAttribute String c){
			
			ModelAndView model = new ModelAndView("sign_up");
		
		
			return model;
			}
		@RequestMapping(value = "/sign_up", method = RequestMethod.POST)
		public ModelAndView sign_up2(@ModelAttribute("acc") String a,@ModelAttribute("pass") String b,@ModelAttribute("CityNo") String c,@ModelAttribute("AreaNo") String d,@ModelAttribute("Add") String e){
			MemberListDB mem = (MemberListDB)context5.getBean("memb");
			ModelAndView model = new ModelAndView("redirect:/home");
		String f = c+d+e;
		Member m = new Member();
		m.setAdd(f);
		m.setName(a);
		m.setPass(b);
		m.setId(mem.add(m));
		this.tem_mem=m;
		this.log=true;
			return model;
			}
		@RequestMapping(value = "/log_out", method = RequestMethod.GET)
		public ModelAndView log_out(){
			
			ModelAndView model = new ModelAndView("redirect:/home");
			this.log=false;
			this.tem_mem=null;
			return model;
			}
		
	/*	@RequestMapping(value = "/log_in", method = RequestMethod.POST)
		public ModelAndView log_in(@ModelAttribute("acc") String a,@ModelAttribute("pass") String b){
			MemberListDB mem = (MemberListDB)context5.getBean("memb");
			ModelAndView model = new ModelAndView("redirect:/home");
			if(mem.ifmem(a,b)!=-1){				
			this.log=true;
			this.tem_mem=mem.getList().get(mem.ifmem(a,b));
			model.addObject(("e"),1);			
			}
			else{
				model.addObject(("e"),-1);
				this.log=false;	
			}
			return model;
			}
		*/
		@RequestMapping(value = "/cat", method = RequestMethod.GET)
		public ModelAndView cat(@ModelAttribute("a") String a,@ModelAttribute("con") String con,@ModelAttribute("typ") String typ){
			ModelAndView model = new ModelAndView("search");
			model.addObject("log",this.log);
			ProductDAODB dao = (ProductDAODB) context.getBean("productDAO");
			List<Product> list = dao.searchcat(a,con);
			model.addObject("productList",list);
			model.addObject("typ",typ);
			model.addObject("a",a);
			return model;
			}
		@RequestMapping(value = "/sea", method = RequestMethod.GET)
		public ModelAndView sea(@ModelAttribute("a") String a,@ModelAttribute("con") String con,@ModelAttribute("typ") String typ){
			ModelAndView model = new ModelAndView("search");
			model.addObject("log",this.log);
			ProductDAODB dao = (ProductDAODB) context.getBean("productDAO");
			List<Product> list = dao.searchPro(a,con);
			model.addObject("productList",list);
			model.addObject("typ",typ);
			model.addObject("a",a);
			return model;
			}
		@RequestMapping(value = "/bra", method = RequestMethod.GET)
		public ModelAndView bra(@ModelAttribute("a") String a,@ModelAttribute("con") String con,@ModelAttribute("typ") String typ){
			ModelAndView model = new ModelAndView("search");
			model.addObject("log",this.log);
			ProductDAODB dao = (ProductDAODB) context.getBean("productDAO");
			List<Product> list = dao.searchbrand(a,con);
			model.addObject("productList",list);
			model.addObject("typ",typ);
			model.addObject("a",a);
			return model;
			}
		@RequestMapping(value = "/goods_importable", method = RequestMethod.GET)
		public ModelAndView goods_importable(@ModelAttribute("sea") String a){
			ModelAndView model = new ModelAndView("goods_importable");
			ProductDAODB dao = (ProductDAODB) context.getBean("productDAO");
			List<Product> list = dao.getReorderList();
			model.addObject("productList",list);
			return model;
			}
		@RequestMapping(value = "/purchasetable", method = RequestMethod.GET)
		public ModelAndView purchasetable(@ModelAttribute("sea") String a){
			ModelAndView model = new ModelAndView("purchasetable");
			PurchaseOrderDAOImpl dao = (PurchaseOrderDAOImpl) context6.getBean("purchaseOrderDAO");
			List<PurchaseOrder> list = dao.getList();
			model.addObject("productList",list);
			return model;
			}
		@RequestMapping(value = "/inf", method = RequestMethod.GET)
		public ModelAndView inf(@ModelAttribute("id") int a){
			ModelAndView model = new ModelAndView("product_info");
			model.addObject("log",this.log);
			ProductDAODB dao = (ProductDAODB) context.getBean("productDAO");
			Product p = dao.get(a);
			model.addObject("product",p);
			return model;
			}
		@RequestMapping(value = "/memlog", method = RequestMethod.GET)
		public ModelAndView memlog(){	
				ModelAndView model3 = new ModelAndView("memlog");	
				return model3;	
		}
		
		
		@RequestMapping(value = "/memlog", method = RequestMethod.POST)
		public ModelAndView memlog(@ModelAttribute("int2")String int2,@ModelAttribute("accountname")String accountname){	
			MemberListDB mem = (MemberListDB) context5.getBean("memb");
			int id = mem.ifmem(accountname, int2);
			if(id!=-1){
				this.log=true;
				this.memcp(mem.get(id));
				ModelAndView model = new ModelAndView("redirect:/home");	
				return model;
			}
			else{
				ModelAndView model3 = new ModelAndView("memlog");
				String e = "m";
				model3.addObject("e",e);
				return model3;
			}
		}
		@RequestMapping(value = "/purchan", method = RequestMethod.GET)
		public void purchan(int val , int ind){
			ShoppingBean s = (ShoppingBean)context3.getBean("shopping");
			s.get(ind).setPurchase(val);
			System.out.println("onchange : "+val+"   index:  "+ind);
		}
		
		public void memcp(Member m){
			this.tem_mem.setAdd(m.getAdd());
			this.tem_mem.setId(m.getId());
			this.tem_mem.setName(m.getName());
			this.tem_mem.setPass(m.getPass());
		}
		
		@RequestMapping(value = "/createPO", method = RequestMethod.GET)
		public ModelAndView createPO(@ModelAttribute("id") int id){
			ProductDAODB dao = (ProductDAODB) context.getBean("productDAO");
			Product p= dao.get(id);
			ModelAndView model = new ModelAndView("createPO");
			model.addObject("product",p);
			model.addObject("id",id);
			return model;
			}
		@RequestMapping(value = "/createPO2", method = RequestMethod.POST)
		public ModelAndView createPO2(@ModelAttribute("inv") int inv,@ModelAttribute("id") int id){
			ModelAndView model = new ModelAndView("redirect:/product");
			System.out.println("po2");
			ProductDAODB dao = (ProductDAODB) context.getBean("productDAO");
			Product p= dao.get(id);
			PurchaseOrderDAOImpl pdao = (PurchaseOrderDAOImpl) context6.getBean("purchaseOrderDAO");
			pdao.create(p, inv);
			return model;
			}
		
		@RequestMapping(value = "/stock", method = RequestMethod.GET)
		public ModelAndView stock(@ModelAttribute("id") int id){
			ModelAndView model = new ModelAndView("redirect:/purchasetable");
			PurchaseOrderDAOImpl purchaseOrderDAO = (PurchaseOrderDAOImpl)context6.getBean("purchaseOrderDAO");
			try {
				int result=purchaseOrderDAO.stockProduct(id);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			//System.out.println("#ofPO ="+poList.size());
			//model.addObject("poList",poList);
			return model;
		}
		
		@RequestMapping(value = "/salesOrderItem", method = RequestMethod.GET)
		public ModelAndView salesOrderItem(@ModelAttribute("sid") int sid,@ModelAttribute("qqq") String qqq){
			ModelAndView model = new ModelAndView("salesOrderItem");
			SalesOrderDAOImpl salesOrderDAO = (SalesOrderDAOImpl)context2.getBean("salesOrderDAO");
			String sql="select * from salesorderitem where SOID='"+sid+"'";

			List<SalesOrderItem> p=	salesOrderDAO.getitemList(sql);
			model.addObject("id",sid);
			model.addObject("productList",p);
			model.addObject("qqq",qqq);
			return model;
		}
}
	
//ProductController
