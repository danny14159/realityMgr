package com.work.bean;
/**
 * @author 
 *
 */
public class TbReceipt  {

	/**
	 * 单据编号
	 */
	private Integer id;

	/**
	 * 收款日期
	 */
	@org.springframework.format.annotation.DateTimeFormat(pattern="yyyy-dd-MM HH:mm:ss")
	private java.util.Date date;

	/**
	 * 付款方式
	 */
	private String method;

	/**
	 * 金额
	 */
	private java.math.BigInteger amount;

	/**
	 * 客户id
	 */
	private Integer client_id;

	/**
	 * 收款人
	 */
	private String payee;

	/**
	 * 现场主管
	 */
	private String manager;

	public void setId(Integer id){
		this.id=id;
	}

	public Integer getId(){
		return this.id;
	}

	public void setDate(java.util.Date date){
		this.date=date;
	}

	public java.util.Date getDate(){
		return this.date;
	}

	public void setMethod(String method){
		this.method=method;
	}

	public String getMethod(){
		return this.method;
	}

	public void setAmount(java.math.BigInteger amount){
		this.amount=amount;
	}

	public java.math.BigInteger getAmount(){
		return this.amount;
	}

	public void setClient_id(Integer client_id){
		this.client_id=client_id;
	}

	public Integer getClient_id(){
		return this.client_id;
	}

	public void setPayee(String payee){
		this.payee=payee;
	}

	public String getPayee(){
		return this.payee;
	}

	public void setManager(String manager){
		this.manager=manager;
	}

	public String getManager(){
		return this.manager;
	}

}