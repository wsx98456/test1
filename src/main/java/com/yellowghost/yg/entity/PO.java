package com.yellowghost.yg.entity;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

public class PO {
	    private int poid;
	    private int pid;
	    private int qun;
	    private Date ordertime;
	    private Date arrtime;
		public int getPoid() {
			return poid;
		}
		public void setPoid(int poid) {
			this.poid = poid;
		}
		public int getPid() {
			return pid;
		}
		public void setPid(int pid) {
			this.pid = pid;
		}
		public int getQun() {
			return qun;
		}
		public void setQun(int qun) {
			this.qun = qun;
		}
		public Date getOrdertime() {
			return ordertime;
		}
		public void setOrdertime(Date ordertime) {
			this.ordertime = ordertime;
		}
		public Date getArrtime() {
			return arrtime;
		}
		public void setArrtime(Date arrtime) {
			this.arrtime = arrtime;
		}
	    

	 
	
	}

