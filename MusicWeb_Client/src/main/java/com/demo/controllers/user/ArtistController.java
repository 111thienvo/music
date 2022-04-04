package com.demo.controllers.user;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.demo.entity.Artist;
import com.demo.entity.Categories;
import com.demo.services.user.APIClient;
import com.demo.services.user.ArtistService;
import com.demo.services.user.UserService;

import retrofit2.Call;

@Controller
@RequestMapping(value = {"artist"})
public class ArtistController {
	
	
	@RequestMapping(value = {"", "index"}, method = RequestMethod.GET)
	public String index(ModelMap modelMap,  @RequestParam(required = false) String keyword) {
		
		try {
			ArtistService artistAPIService = APIClient.getClient().create(ArtistService.class);
			Map<String, Object>  artists = artistAPIService.getListArtistByPage(1, "art").execute().body();
		
			
			
			modelMap.put("artists", artists);
		

			return "artist/index";
		} catch (Exception e) {
			System.err.println(e.getMessage());
			return "artist/index";
		}
		
	}
	
	@RequestMapping(value = {"artist_single"}, method = RequestMethod.GET)
	public String artist_single() {
		return "artist/artist_single";
	}
}
