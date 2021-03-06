package com.demo.controllers.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = {"blog"})
public class BlogController {

	@RequestMapping(value = {"", "index"}, method = RequestMethod.GET)
	public String index() {
		return "blog/index";
	}
	
	@RequestMapping(value = {"blog_single"}, method = RequestMethod.GET)
	public String artist_single() {
		return "blog/blog_single";
	}
}
