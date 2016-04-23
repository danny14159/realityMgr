package com.work.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.work.bean.TbHouseType;
import com.work.mapper.BasicDao;
import com.work.mapper.TbHouseTypeDao;

@Controller
@RequestMapping("/housetype")
public class HouseTypeController extends BasicController<TbHouseType>{
	
	@Resource
	private TbHouseTypeDao tbHouseTypeDao;
	
	public static final String PREFIX="tbHouseType/";

	@Override
	protected String getPrefix() {
		return PREFIX;
	}

	@Override
	protected BasicDao<TbHouseType> getDao() {
		return tbHouseTypeDao;
	}


}
