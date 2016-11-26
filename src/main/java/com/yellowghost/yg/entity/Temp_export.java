package com.yellowghost.yg.entity;

import java.sql.Date;



public class Temp_export {
	    private int id;
	    private int memid;
	    private Date date;
	    private int total;

	    public Temp_export() {
	    }

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public Date getDate() {
			return date;
		}

		public void setDate(Date date) {
			this.date = date;
		}

		public int getTotal() {
			return total;
		}

		public void setTotal(int total) {
			this.total = total;
		}

		public int getMemid() {
			return memid;
		}

		public void setMemid(int memid) {
			this.memid = memid;
		}

	 
	
	}

