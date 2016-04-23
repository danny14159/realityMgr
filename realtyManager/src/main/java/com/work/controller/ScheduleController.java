package com.work.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.work.bean.TbSchedule;
import com.work.mapper.BasicDao;
import com.work.mapper.TbScheduleDao;

@Controller
@RequestMapping("/schedule")
public class ScheduleController extends BasicController<TbSchedule>{
	
	@Resource
	private TbScheduleDao tbScheduleDao;
	
	public static final String PREFIX="tbSchedule/";

	@Override
	protected String getPrefix() {
		return PREFIX;
	}

	@Override
	protected BasicDao<TbSchedule> getDao() {
		return tbScheduleDao;
	}


}
