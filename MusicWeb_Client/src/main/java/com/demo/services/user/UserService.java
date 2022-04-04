package com.demo.services.user;






import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.MimeMessageHelper;

import com.demo.entity.User;

import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Path;
import retrofit2.http.Query;

public interface UserService {

	
	@GET("user/findall2")
	Call<List<User>> listAll2();
	
	@GET("users/findbyUsername")
	Call<User> findbyUsername(@Query("username")String username);
	
	
	@POST("users/login")
	Call<User> login(@Query("username")String username,@Query("password") String password);
	
	@POST("users/isUserNameUnique")
	Call<ResponseBody> isUserNameUnique(@Body User user);
	
	@POST("users/isEmailUnique")
	Call<ResponseBody> isEmailUnique(@Body User user);
	
	@GET("users/verify/{code}")
	Call<ResponseBody> verify(@Path("code")String code);
	
	@PUT("users/edit/{id}")
	Call<ResponseBody> edit(@Path("id")int id,@Body User user );

	@POST("users/check")
	Call<User> check(@Query("username")String username,@Query("password") String password);
	

	@POST("users/register")
	Call<ResponseBody> register(@Body User user);
	
	
	
	
}
