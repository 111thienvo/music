package com.demo.controllers.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = {"genres"})
public class GenresController {

	@RequestMapping(value = {"", "index"}, method = RequestMethod.GET)
	public String index() {
		return "genres/index";
	}
	
	@RequestMapping(value = {"genres_singel"}, method = RequestMethod.GET)
	public String genres_singel() {
		return "genres/genres_singel";
	}
		
}
