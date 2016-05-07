package com.work.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.work.bean.TbHouseType;
import com.work.mapper.BasicDao;
import com.work.mapper.TbBuildingDao;
import com.work.mapper.TbHouseTypeDao;

@Controller
@RequestMapping("/housetype")
public class HouseTypeController extends BasicController<TbHouseType>{
	
	@Resource
	private TbHouseTypeDao tbHouseTypeDao;
	@Resource
	private TbBuildingDao tbBuildingDao;
	
	public static final String PREFIX="tbHouseType/";

	@Override
	protected String getPrefix() {
		return PREFIX;
	}

	@Override
	protected BasicDao<TbHouseType> getDao() {
		return tbHouseTypeDao;
	}

	@Override
	public String add(Model model) {
		model.addAttribute("build", tbBuildingDao.list(null));
		return super.add(model);
	}
}
