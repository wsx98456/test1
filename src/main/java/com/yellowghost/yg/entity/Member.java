package com.yellowghost.yg.entity;

import java.util.ArrayList;
import com.yellowghost.yg.entity.Temp_export;
public class Member {

    private String name;
    private String pass;
    private String add;
    private int id;
    private ArrayList<Temp_export> list = new ArrayList<Temp_export>();

  
    public Member() {
         }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }



    public void add(Temp_export t) {
        this.getList().add(t);
    }

	public String getAdd() {
		return add;
	}

	public void setAdd(String add) {
		this.add = add;
	}

	public ArrayList<Temp_export> getList() {
		return list;
	}

	public void setList(ArrayList<Temp_export> list) {
		this.list = list;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

}
