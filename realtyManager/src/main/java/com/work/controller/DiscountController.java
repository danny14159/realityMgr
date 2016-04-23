package com.work.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.work.bean.TbDiscount;
import com.work.mapper.BasicDao;
import com.work.mapper.TbDiscountDao;

@Controller
@RequestMapping("/discount")
public class DiscountController extends BasicController<TbDiscount>{
	
	@Resource
	private TbDiscountDao tbDiscountDao;
	
	public static final String PREFIX="tbDiscount/";

	@Override
	protected String getPrefix() {
		return PREFIX;
	}

	@Override
	protected BasicDao<TbDiscount> getDao() {
		return tbDiscountDao;
	}


}
