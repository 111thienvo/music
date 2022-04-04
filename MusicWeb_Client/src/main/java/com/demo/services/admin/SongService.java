package com.demo.services.admin;

import org.springframework.http.ResponseEntity;

import com.demo.entity.Song;

public interface SongService {
	
	public ResponseEntity<Song> getSongById(int id);
}
