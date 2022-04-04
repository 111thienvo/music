package com.demo.services.user;

import java.util.Map;

import org.springframework.web.bind.annotation.GetMapping;

import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Path;
import retrofit2.http.Query;

public interface ArtistService {

	@GET("artist/page/{pageNum}")
	Call<Map<String, Object>>getListArtistByPage(@Path("pageNum")int pageNum, @Query("id") String keyword);
	
}
