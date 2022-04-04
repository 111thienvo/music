package com.demo.helpers;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.springframework.web.multipart.MultipartFile;

public class UploadHelper2 {
	
	public static String upload(ServletContext servletContext, MultipartFile file) {
		try {
			String fileName = generateFileName(file.getOriginalFilename());
			
		
			byte[] bytes = file.getBytes();
			Path path = Paths.get(servletContext.getRealPath("/assets/data/music/"+ fileName));
			Files.write(path, bytes);
//			Files.readAllLines(path);
			return fileName;			
		} catch (Exception e) {
			return null;
		}
	}
	
	public static String uploadSongUrl(ServletContext servletContext, MultipartFile songUrl) {
		try {
//			String fileName = generateFileName(songUrl.getOriginalFilename());
			
			String fileName = System.currentTimeMillis() + "_" + songUrl.getOriginalFilename();
			byte[] bytes = songUrl.getBytes();
			Path path = Paths.get(servletContext.getRealPath("/assets/data/music/"+ fileName));
			Files.write(path, bytes);
//			Files.readAllLines(path);
			return fileName;			
		} catch (Exception e) {
			return null;
		}
	}
	
	public static String uploadSongPhoto(ServletContext servletContext, MultipartFile photo) {
		try {
//			String fileName = generateFileName(file.getOriginalFilename());
			
			String fileName = System.currentTimeMillis() + "_" + photo.getOriginalFilename();
			byte[] bytes = photo.getBytes();
			Path path = Paths.get(servletContext.getRealPath("/assets/data/photomusic/"+ fileName));
			Files.write(path, bytes);
//			Files.readAllLines(path);
			return fileName;			
		} catch (Exception e) {
			return null;
		}
	}
	
	public static String generateFileName(String file) {
		String uuid= UUID.randomUUID().toString().replace("-", "");
		int index =file.lastIndexOf(".");
		String ext = file.substring(index);
		return uuid + ext;
	}
}
