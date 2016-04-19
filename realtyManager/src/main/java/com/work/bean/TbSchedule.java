package com.work.bean;
/**
 * @author 
 *
 */
public class TbSchedule  {

	/**
	 * 
	 */
	private Integer id;

	/**
	 * 预定时间
	 */
	@org.springframework.format.annotation.DateTimeFormat(pattern="yyyy-dd-MM HH:mm:ss")
	private java.util.Date book_time;

	/**
	 * 客户id
	 */
	private Integer client_id;

	/**
	 * 房屋id
	 */
	private Integer house_id;

	/**
	 * 已交款
	 */
	private String payed_money;

	public void setId(Integer id){
		this.id=id;
	}

	public Integer getId(){
		return this.id;
	}

	public void setBook_time(java.util.Date book_time){
		this.book_time=book_time;
	}

	public java.util.Date getBook_time(){
		return this.book_time;
	}

	public void setClient_id(Integer client_id){
		this.client_id=client_id;
	}

	public Integer getClient_id(){
		return this.client_id;
	}

	public void setHouse_id(Integer house_id){
		this.house_id=house_id;
	}

	public Integer getHouse_id(){
		return this.house_id;
	}

	public void setPayed_money(String payed_money){
		this.payed_money=payed_money;
	}

	public String getPayed_money(){
		return this.payed_money;
	}

}