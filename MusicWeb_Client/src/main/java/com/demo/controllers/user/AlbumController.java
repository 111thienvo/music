package com.demo.controllers.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = {"album"})
public class AlbumController {

	@RequestMapping(value = {"", "index"}, method = RequestMethod.GET)
	public String index() {
		return "album/index";
	}
	
	@RequestMapping(value = {"album_single"}, method = RequestMethod.GET)
	public String album_single() {
		return "album/album_single";
	}
}
