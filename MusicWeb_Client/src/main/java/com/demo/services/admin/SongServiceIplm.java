package com.demo.services.admin;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.demo.configurations.APIConfiguration;
import com.demo.entity.Song;

@Service("songService")
public class SongServiceIplm implements SongService{

	APIConfiguration apiConfig = new APIConfiguration();
	String BASE_URL =  apiConfig.getBASE_URL();
	@Override
	public ResponseEntity<Song> getSongById(int id) {
		try {
			RestTemplate restTemplate = new RestTemplate();
			return restTemplate.getForEntity(BASE_URL + "song/" + id, Song.class);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return null;
		}
	}

}
