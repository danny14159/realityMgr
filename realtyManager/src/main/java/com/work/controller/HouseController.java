package com.work.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.work.bean.TbHouse;
import com.work.mapper.BasicDao;
import com.work.mapper.TbHouseDao;
import com.work.mapper.TbHouseTypeDao;

@Controller
@RequestMapping("/house")
public class HouseController extends BasicController<TbHouse>{
	
	@Resource
	private TbHouseDao tbHouseDao;
	@Resource
	private TbHouseTypeDao tbHouseTypeDao;
	
	public static final String PREFIX="tbHouse/";

	@Override
	protected String getPrefix() {
		return PREFIX;
	}

	@Override
	protected BasicDao<TbHouse> getDao() {
		return tbHouseDao;
	}

	@Override
	public String add(Model model) {
		model.addAttribute("house_type", tbHouseTypeDao.list(null));
		return super.add(model);
	}
}
