package com.work.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.work.bean.TbHouse;
import com.work.mapper.BasicDao;
import com.work.mapper.TbHouseDao;

@Controller
@RequestMapping("/house")
public class HouseController extends BasicController<TbHouse>{
	
	@Resource
	private TbHouseDao tbHouseDao;
	
	public static final String PREFIX="tbHouse/";

	@Override
	protected String getPrefix() {
		return PREFIX;
	}

	@Override
	protected BasicDao<TbHouse> getDao() {
		return tbHouseDao;
	}


}
