package com.work;

import javax.annotation.Resource;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.web.SpringBootServletInitializer;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.work.mapper.TbBuildingDao;

@Controller
@SpringBootApplication
public class MainController extends SpringBootServletInitializer{
	
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(MainController.class);
	}
	
	@Resource
	TbBuildingDao buildingDao;
	
	@RequestMapping("/")
	public String home(Model model) {
		model.addAttribute("data", buildingDao.list(null));
		return "index";
	}

	public static void main(String[] args) throws Exception {
		SpringApplication.run(MainController.class, args);
	}

}
