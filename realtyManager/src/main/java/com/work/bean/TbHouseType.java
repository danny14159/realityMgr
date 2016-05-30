package com.work.bean;
/**房型
 * @author 
 *
 */
public class TbHouseType  {

	/**
	 * 
	 */
	private Integer id;

	/**
	 * 客厅
	 */
	private Integer drawing_room;

	/**
	 * 阳台
	 */
	private Integer balcony;

	/**
	 * 储藏室
	 */
	private Integer store_room;

	/**
	 * 阁楼
	 */
	private Integer loft;

	/**
	 * 卧室
	 */
	private Integer bedroom;

	/**
	 * 卫生间
	 */
	private Integer restroom;

	/**
	 * 入户花园
	 */
	private Integer garden;

	/**
	 * 厨房
	 */
	private Integer kitchen;

	/**
	 * 套型
	 */
	private String house_type;

	/**
	 * 备注
	 */
	private String remark;

	/**
	 * 所属楼盘id
	 */
	private Integer tb_house_id;
	
	/**
	 * 所属楼盘名称
	 */
	private String house_name;

	public String getHouse_name() {
		return house_name;
	}

	public void setHouse_name(String house_name) {
		this.house_name = house_name;
	}

	public void setId(Integer id){
		this.id=id;
	}

	public Integer getId(){
		return this.id;
	}

	public void setDrawing_room(Integer drawing_room){
		this.drawing_room=drawing_room;
	}

	public Integer getDrawing_room(){
		return this.drawing_room;
	}

	public void setBalcony(Integer balcony){
		this.balcony=balcony;
	}

	public Integer getBalcony(){
		return this.balcony;
	}

	public void setStore_room(Integer store_room){
		this.store_room=store_room;
	}

	public Integer getStore_room(){
		return this.store_room;
	}

	public void setLoft(Integer loft){
		this.loft=loft;
	}

	public Integer getLoft(){
		return this.loft;
	}

	public void setBedroom(Integer bedroom){
		this.bedroom=bedroom;
	}

	public Integer getBedroom(){
		return this.bedroom;
	}

	public void setRestroom(Integer restroom){
		this.restroom=restroom;
	}

	public Integer getRestroom(){
		return this.restroom;
	}

	public void setGarden(Integer garden){
		this.garden=garden;
	}

	public Integer getGarden(){
		return this.garden;
	}

	public void setKitchen(Integer kitchen){
		this.kitchen=kitchen;
	}

	public Integer getKitchen(){
		return this.kitchen;
	}

	public void setHouse_type(String house_type){
		this.house_type=house_type;
	}

	public String getHouse_type(){
		return this.house_type;
	}

	public void setRemark(String remark){
		this.remark=remark;
	}

	public String getRemark(){
		return this.remark;
	}

	public void setTb_house_id(Integer tb_house_id){
		this.tb_house_id=tb_house_id;
	}

	public Integer getTb_house_id(){
		return this.tb_house_id;
	}

}