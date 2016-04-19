package com.work.bean;
/**
 * @author 
 *
 */
public class TbOrder  {

	/**
	 * 合同编号
	 */
	private Integer id;

	/**
	 * 签约日期
	 */
	@org.springframework.format.annotation.DateTimeFormat(pattern="yyyy-dd-MM HH:mm:ss")
	private java.util.Date sign_time;

	/**
	 * 客户id
	 */
	private Integer client_id;

	/**
	 * 客户名称
	 */
	private String client_name;

	/**
	 * 客户联系电话
	 */
	private String client_phone;

	/**
	 * 证件类型
	 */
	private String client_certifacate_type;

	/**
	 * 证件号码
	 */
	private String client_certifacate;

	/**
	 * 客户地址
	 */
	private String client_address;

	/**
	 * 客户备注
	 */
	private String client_remark;

	/**
	 * 房屋id
	 */
	private Integer house_id;

	/**
	 * 付款方式
	 */
	private String pay_method;

	/**
	 * 首付款
	 */
	private java.math.BigInteger initial_payment;

	/**
	 * 实售房款
	 */
	private java.math.BigInteger house_price;

	/**
	 * 商贷金额
	 */
	private java.math.BigInteger loan_amount;

	/**
	 * 商贷年限
	 */
	private Integer loan_year;

	/**
	 * 商贷银行
	 */
	private String loan_bank;

	/**
	 * 公积金金额
	 */
	private java.math.BigInteger cpf_amount;

	/**
	 * 公积金年限
	 */
	private Integer cpf_year;

	/**
	 * 公积金银行
	 */
	private String cpf_bank;

	/**
	 * 合同备注
	 */
	private String remark;

	public void setId(Integer id){
		this.id=id;
	}

	public Integer getId(){
		return this.id;
	}

	public void setSign_time(java.util.Date sign_time){
		this.sign_time=sign_time;
	}

	public java.util.Date getSign_time(){
		return this.sign_time;
	}

	public void setClient_id(Integer client_id){
		this.client_id=client_id;
	}

	public Integer getClient_id(){
		return this.client_id;
	}

	public void setClient_name(String client_name){
		this.client_name=client_name;
	}

	public String getClient_name(){
		return this.client_name;
	}

	public void setClient_phone(String client_phone){
		this.client_phone=client_phone;
	}

	public String getClient_phone(){
		return this.client_phone;
	}

	public void setClient_certifacate_type(String client_certifacate_type){
		this.client_certifacate_type=client_certifacate_type;
	}

	public String getClient_certifacate_type(){
		return this.client_certifacate_type;
	}

	public void setClient_certifacate(String client_certifacate){
		this.client_certifacate=client_certifacate;
	}

	public String getClient_certifacate(){
		return this.client_certifacate;
	}

	public void setClient_address(String client_address){
		this.client_address=client_address;
	}

	public String getClient_address(){
		return this.client_address;
	}

	public void setClient_remark(String client_remark){
		this.client_remark=client_remark;
	}

	public String getClient_remark(){
		return this.client_remark;
	}

	public void setHouse_id(Integer house_id){
		this.house_id=house_id;
	}

	public Integer getHouse_id(){
		return this.house_id;
	}

	public void setPay_method(String pay_method){
		this.pay_method=pay_method;
	}

	public String getPay_method(){
		return this.pay_method;
	}

	public void setInitial_payment(java.math.BigInteger initial_payment){
		this.initial_payment=initial_payment;
	}

	public java.math.BigInteger getInitial_payment(){
		return this.initial_payment;
	}

	public void setHouse_price(java.math.BigInteger house_price){
		this.house_price=house_price;
	}

	public java.math.BigInteger getHouse_price(){
		return this.house_price;
	}

	public void setLoan_amount(java.math.BigInteger loan_amount){
		this.loan_amount=loan_amount;
	}

	public java.math.BigInteger getLoan_amount(){
		return this.loan_amount;
	}

	public void setLoan_year(Integer loan_year){
		this.loan_year=loan_year;
	}

	public Integer getLoan_year(){
		return this.loan_year;
	}

	public void setLoan_bank(String loan_bank){
		this.loan_bank=loan_bank;
	}

	public String getLoan_bank(){
		return this.loan_bank;
	}

	public void setCpf_amount(java.math.BigInteger cpf_amount){
		this.cpf_amount=cpf_amount;
	}

	public java.math.BigInteger getCpf_amount(){
		return this.cpf_amount;
	}

	public void setCpf_year(Integer cpf_year){
		this.cpf_year=cpf_year;
	}

	public Integer getCpf_year(){
		return this.cpf_year;
	}

	public void setCpf_bank(String cpf_bank){
		this.cpf_bank=cpf_bank;
	}

	public String getCpf_bank(){
		return this.cpf_bank;
	}

	public void setRemark(String remark){
		this.remark=remark;
	}

	public String getRemark(){
		return this.remark;
	}

}