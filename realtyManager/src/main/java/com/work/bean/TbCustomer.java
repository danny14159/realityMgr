package com.work.bean;
/**
 * @author 
 *
 */
public class TbCustomer  {

	/**
	 * 
	 */
	private Integer id;

	/**
	 * 姓名
	 */
	private String name;

	/**
	 * 电话
	 */
	private String phone;

	/**
	 * 性别
	 */
	private String sex;

	/**
	 * 现住地
	 */
	private String address;

	/**
	 * 职业
	 */
	private String occupation;

	public void setId(Integer id){
		this.id=id;
	}

	public Integer getId(){
		return this.id;
	}

	public void setName(String name){
		this.name=name;
	}

	public String getName(){
		return this.name;
	}

	public void setPhone(String phone){
		this.phone=phone;
	}

	public String getPhone(){
		return this.phone;
	}

	public void setSex(String sex){
		this.sex=sex;
	}

	public String getSex(){
		return this.sex;
	}

	public void setAddress(String address){
		this.address=address;
	}

	public String getAddress(){
		return this.address;
	}

	public void setOccupation(String occupation){
		this.occupation=occupation;
	}

	public String getOccupation(){
		return this.occupation;
	}

}