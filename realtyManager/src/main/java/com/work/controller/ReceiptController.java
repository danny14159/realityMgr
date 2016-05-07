package com.work.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.work.bean.TbReceipt;
import com.work.mapper.BasicDao;
import com.work.mapper.TbCustomerDao;
import com.work.mapper.TbReceiptDao;

@Controller
@RequestMapping("/receipt")
public class ReceiptController extends BasicController<TbReceipt>{
	
	@Resource
	private TbReceiptDao tbReceiptDao;
	@Resource
	private TbCustomerDao tbCustomerDao;
	
	public static final String PREFIX="tbReceipt/";

	@Override
	protected String getPrefix() {
		return PREFIX;
	}

	@Override
	protected BasicDao<TbReceipt> getDao() {
		return tbReceiptDao;
	}
	
	@Override
	public String add(Model model) {
		model.addAttribute("customer", tbCustomerDao.list(null));
		return super.add(model);
	}
}
