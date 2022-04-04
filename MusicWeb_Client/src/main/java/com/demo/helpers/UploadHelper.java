package com.demo.helpers;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.springframework.web.multipart.MultipartFile;

public class UploadHelper {
	public static String upload(ServletContext servletContext, MultipartFile file) {
		try {
			String fileName = generateFile(file.getOriginalFilename());
			byte[] bytes = file.getBytes();
			Path path = Paths.get(servletContext.getRealPath("/assets/data/img/"+ fileName));
			Files.write(path, bytes);
			System.out.println("a :"+fileName);
			return fileName;
		} catch (Exception e) {
			return null;
		}
	}
	
	public static String generateFile(String fileName) {
		// a.doc.gif.png
		String uuid = UUID.randomUUID().toString().replace("-", "");
		int index = fileName.lastIndexOf(".");
		String ext = fileName.substring(index);
		return uuid + ext;
	}
}
