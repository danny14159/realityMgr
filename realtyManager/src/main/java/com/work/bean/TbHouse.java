package com.work.bean;
/**
 * @author 
 *
 */
public class TbHouse  {

	/**
	 * 
	 */
	private Integer id;

	/**
	 * 房屋位置
	 */
	private String location;

	/**
	 * 幢号
	 */
	private String building_no;

	/**
	 * 单元号
	 */
	private String unit_no;

	/**
	 * 房号
	 */
	private String house_no;

	/**
	 * 房型id，外键
	 */
	private Integer house_type_id;

	/**
	 * 层高
	 */
	private Integer height;

	/**
	 * 建筑面积
	 */
	private String area;

	/**
	 * 套内面积
	 */
	private String inner_area;

	/**
	 * 单价
	 */
	private java.math.BigInteger single_price;

	/**
	 * 交楼时间
	 */
	@org.springframework.format.annotation.DateTimeFormat(pattern="yyyy-dd-MM HH:mm:ss")
	private java.util.Date delivery_time;

	/**
	 * 装饰详情
	 */
	private String decorate_detail;

	/**
	 * 备注
	 */
	private String remark;

	public void setId(Integer id){
		this.id=id;
	}

	public Integer getId(){
		return this.id;
	}

	public void setLocation(String location){
		this.location=location;
	}

	public String getLocation(){
		return this.location;
	}

	public void setBuilding_no(String building_no){
		this.building_no=building_no;
	}

	public String getBuilding_no(){
		return this.building_no;
	}

	public void setUnit_no(String unit_no){
		this.unit_no=unit_no;
	}

	public String getUnit_no(){
		return this.unit_no;
	}

	public void setHouse_no(String house_no){
		this.house_no=house_no;
	}

	public String getHouse_no(){
		return this.house_no;
	}

	public void setHouse_type_id(Integer house_type_id){
		this.house_type_id=house_type_id;
	}

	public Integer getHouse_type_id(){
		return this.house_type_id;
	}

	public void setHeight(Integer height){
		this.height=height;
	}

	public Integer getHeight(){
		return this.height;
	}

	public void setArea(String area){
		this.area=area;
	}

	public String getArea(){
		return this.area;
	}

	public void setInner_area(String inner_area){
		this.inner_area=inner_area;
	}

	public String getInner_area(){
		return this.inner_area;
	}

	public void setSingle_price(java.math.BigInteger single_price){
		this.single_price=single_price;
	}

	public java.math.BigInteger getSingle_price(){
		return this.single_price;
	}

	public void setDelivery_time(java.util.Date delivery_time){
		this.delivery_time=delivery_time;
	}

	public java.util.Date getDelivery_time(){
		return this.delivery_time;
	}

	public void setDecorate_detail(String decorate_detail){
		this.decorate_detail=decorate_detail;
	}

	public String getDecorate_detail(){
		return this.decorate_detail;
	}

	public void setRemark(String remark){
		this.remark=remark;
	}

	public String getRemark(){
		return this.remark;
	}

}