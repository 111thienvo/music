package com.demo.services.user;

import java.util.List;

import com.demo.entity.Artist;
import com.demo.entity.Categories;
import com.demo.entity.Gallery;
import com.demo.entity.Song;

import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Path;
import retrofit2.http.Query;

public interface UploadService {
	
	@GET("artist/findall")
	Call<List<Artist>> listAllArtist();
	
	@GET("category/findall")
	Call<List<Categories>> listAllCategories();
	
	@GET("gallery/findall")
	Call<List<Gallery>> listAllGallery();
	
	@GET("song/findall")
	Call<List<Song>> listAllSong();
	
	@POST("song/add")
	Call<ResponseBody> create(@Body Song song, @Query("artistId") String artistId, @Query("categoriesId") String categoriesId);
	
	@GET("song/getSongById/{id}")
	Call<Song> findByid(@Path("id") int id);
	
	@GET("song/delete/{id}")
	Call<ResponseBody> deleteSong(@Path("id") int id);
	
	@GET("category/delete/{id}")
	Call<ResponseBody> deleteCategory(@Path("id") int id);
	
	@GET("artist/delete/{id}")
	Call<ResponseBody> deleteArtist(@Path("id") int id);
	
	
}
