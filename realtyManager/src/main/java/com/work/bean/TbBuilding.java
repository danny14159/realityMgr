package com.work.bean;
/**楼盘
 * @author 
 *
 */
public class TbBuilding  {

	/**
	 * 
	 */
	private Integer id;

	/**
	 * 所在区域
	 */
	private String region;

	/**
	 * 楼盘名称
	 */
	private String name;

	/**
	 * 项目地址
	 */
	private String address;

	/**
	 * 项目编码
	 */
	private String code;

	/**
	 * 建筑面积
	 */
	private String building_area;

	/**
	 * 占地面积
	 */
	private String total_area;

	/**
	 * 绿化率
	 */
	private String green_rate;

	/**
	 * 总户数
	 */
	private Integer residences;

	/**
	 * 开盘日期
	 */
	@org.springframework.format.annotation.DateTimeFormat(pattern="yyyy-MM-dd")
	private java.util.Date open_date;

	/**
	 * 预售日期
	 */
	@org.springframework.format.annotation.DateTimeFormat(pattern="yyyy-MM-dd")
	private java.util.Date sale_date;

	/**
	 * 竣工日期
	 */
	@org.springframework.format.annotation.DateTimeFormat(pattern="yyyy-MM-dd")
	private java.util.Date finish_date;

	/**
	 * 营业执照注册账号
	 */
	private String license_account;

	/**
	 * 资质证书账号
	 */
	private String qualification_license;

	/**
	 * 法人
	 */
	private String legal_person;

	/**
	 * 法人联系电话
	 */
	private String legal_person_phone;

	/**
	 * 法人邮编
	 */
	private String legal_person_postcode;

	/**
	 * 楼盘介绍
	 */
	private String intro;

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

	public void setRegion(String region){
		this.region=region;
	}

	public String getRegion(){
		return this.region;
	}

	public void setName(String name){
		this.name=name;
	}

	public String getName(){
		return this.name;
	}

	public void setAddress(String address){
		this.address=address;
	}

	public String getAddress(){
		return this.address;
	}

	public void setCode(String code){
		this.code=code;
	}

	public String getCode(){
		return this.code;
	}

	public void setBuilding_area(String building_area){
		this.building_area=building_area;
	}

	public String getBuilding_area(){
		return this.building_area;
	}

	public void setTotal_area(String total_area){
		this.total_area=total_area;
	}

	public String getTotal_area(){
		return this.total_area;
	}

	public void setGreen_rate(String green_rate){
		this.green_rate=green_rate;
	}

	public String getGreen_rate(){
		return this.green_rate;
	}

	public void setResidences(Integer residences){
		this.residences=residences;
	}

	public Integer getResidences(){
		return this.residences;
	}

	public void setOpen_date(java.util.Date open_date){
		this.open_date=open_date;
	}

	public java.util.Date getOpen_date(){
		return this.open_date;
	}

	public void setSale_date(java.util.Date sale_date){
		this.sale_date=sale_date;
	}

	public java.util.Date getSale_date(){
		return this.sale_date;
	}

	public void setFinish_date(java.util.Date finish_date){
		this.finish_date=finish_date;
	}

	public java.util.Date getFinish_date(){
		return this.finish_date;
	}

	public void setLicense_account(String license_account){
		this.license_account=license_account;
	}

	public String getLicense_account(){
		return this.license_account;
	}

	public void setQualification_license(String qualification_license){
		this.qualification_license=qualification_license;
	}

	public String getQualification_license(){
		return this.qualification_license;
	}

	public void setLegal_person(String legal_person){
		this.legal_person=legal_person;
	}

	public String getLegal_person(){
		return this.legal_person;
	}

	public void setLegal_person_phone(String legal_person_phone){
		this.legal_person_phone=legal_person_phone;
	}

	public String getLegal_person_phone(){
		return this.legal_person_phone;
	}

	public void setLegal_person_postcode(String legal_person_postcode){
		this.legal_person_postcode=legal_person_postcode;
	}

	public String getLegal_person_postcode(){
		return this.legal_person_postcode;
	}

	public void setIntro(String intro){
		this.intro=intro;
	}

	public String getIntro(){
		return this.intro;
	}

	public void setRemark(String remark){
		this.remark=remark;
	}

	public String getRemark(){
		return this.remark;
	}

}