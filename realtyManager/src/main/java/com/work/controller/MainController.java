package com.work.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.util.WebUtils;

import com.work.bean.TbUser;
import com.work.mapper.TbUserDao;
import com.work.util.AjaxReturn;
import com.work.util.M;

@Controller
@RequestMapping("/app")
public class MainController {

}
