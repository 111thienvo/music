package com.demo.controllers.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.demo.entity.User;



@Controller
@RequestMapping(value = {"","home"})
public class HomeController {

	@RequestMapping(value = {"", "index"}, method = RequestMethod.GET)
	public String index(ModelMap modelmap) {
//		User user = new User();
//		modelmap.put("user", user);
		return "home/index";
	}
}
