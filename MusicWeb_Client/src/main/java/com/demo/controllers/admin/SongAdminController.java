package com.demo.controllers.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.demo.entity.Song;
import com.demo.services.admin.SongService;

@Controller
@RequestMapping(value = "admin/song")
public class SongAdminController {
	
	@Autowired
	private SongService _songService;
	
	@RequestMapping(value = "index", method = RequestMethod.GET)
	public String index() {
		return "admin/song/index";
	}
	
	@RequestMapping(value = "getSongById/{id}", method = RequestMethod.GET)
	public HttpEntity<? extends Object> getSongById(@PathVariable(name = "id") Integer id) {
//        log.info("Song id is: " + id);
        try {
            Song song = _songService.getSongById(id).getBody();
            return new ResponseEntity<Song>(song,HttpStatus.OK);
        }
        catch (Exception e) {
            return new ResponseEntity<String>("Could not find any song with ID " + id, HttpStatus.BAD_REQUEST);
        }
    }
}
