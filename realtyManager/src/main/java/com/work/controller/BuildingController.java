package com.work.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.work.bean.TbBuilding;
import com.work.mapper.BasicDao;
import com.work.mapper.TbBuildingDao;

@Controller
@RequestMapping("/building")
public class BuildingController extends BasicController<TbBuilding>{
	
	@Resource
	private TbBuildingDao tbBuildingDao;
	
	public static final String PREFIX="tbBuilding/";

	@Override
	protected String getPrefix() {
		return PREFIX;
	}

	@Override
	protected BasicDao<TbBuilding> getDao() {
		return tbBuildingDao;
	}


}
