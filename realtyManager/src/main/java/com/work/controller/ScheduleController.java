package com.work.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.work.bean.TbSchedule;
import com.work.mapper.BasicDao;
import com.work.mapper.TbCustomerDao;
import com.work.mapper.TbHouseDao;
import com.work.mapper.TbScheduleDao;

@Controller
@RequestMapping("/schedule")
public class ScheduleController extends BasicController<TbSchedule>{
	
	@Resource
	private TbScheduleDao tbScheduleDao;
	@Resource
	private TbCustomerDao tbCustomerDao;
	@Resource
	private TbHouseDao tbHouseDao;
	
	public static final String PREFIX="tbSchedule/";

	@Override
	protected String getPrefix() {
		return PREFIX;
	}

	@Override
	protected BasicDao<TbSchedule> getDao() {
		return tbScheduleDao;
	}

	@Override
	public String add(Model model) {
		model.addAttribute("customers", tbCustomerDao.list(null));
		model.addAttribute("houses", tbHouseDao.list(null));
		return super.add(model);
	}
}
