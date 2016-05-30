package com.work.bean;
/**折扣
 * @author 
 *
 */
public class TbDiscount  {

	/**
	 * 
	 */
	private Integer id;

	/**
	 * 开始时间
	 */
	@org.springframework.format.annotation.DateTimeFormat(pattern="yyyy-MM-dd")
	private java.util.Date degin_time;

	/**
	 * 结束时间
	 */
	@org.springframework.format.annotation.DateTimeFormat(pattern="yyyy-MM-dd")
	private java.util.Date end_time;

	/**
	 * 几折
	 */
	private String discount;

	public void setId(Integer id){
		this.id=id;
	}

	public Integer getId(){
		return this.id;
	}

	public void setDegin_time(java.util.Date degin_time){
		this.degin_time=degin_time;
	}

	public java.util.Date getDegin_time(){
		return this.degin_time;
	}

	public void setEnd_time(java.util.Date end_time){
		this.end_time=end_time;
	}

	public java.util.Date getEnd_time(){
		return this.end_time;
	}

	public void setDiscount(String discount){
		this.discount=discount;
	}

	public String getDiscount(){
		return this.discount;
	}

}