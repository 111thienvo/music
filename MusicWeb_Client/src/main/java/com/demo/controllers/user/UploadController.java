package com.demo.controllers.user;

import java.util.List;
import java.util.Set;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.demo.configurations.CheckLogin;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.demo.entity.Artist;
import com.demo.entity.Categories;
import com.demo.entity.Gallery;
import com.demo.entity.Song;
import com.demo.entity.SongsArtists;
import com.demo.helpers.UploadHelper2;
import com.demo.services.user.APIClient;
import com.demo.services.user.UploadService;

@Controller
@RequestMapping(value = {"upload"})
public class UploadController implements ServletContextAware {
	
	private ServletContext ser;
	

	@RequestMapping(value = {"","index"}, method = RequestMethod.GET)
	public String index(ModelMap modelMap, @ModelAttribute("song") Song song,HttpSession session) {
		session.getAttribute("username");
		boolean check = CheckLogin.checkLogin(session.getAttribute("username"));
		if(check) {
			try {
				modelMap.put("song", song);
				UploadService uploadService = APIClient.getClient().create(UploadService.class);	
				List<Song> songs = uploadService.listAllSong().execute().body();
				List<Artist> artists = uploadService.listAllArtist().execute().body();
				List<Gallery> galleries = uploadService.listAllGallery().execute().body();
				List<Categories> categories = uploadService.listAllCategories().execute().body();	
				modelMap.put("categories", categories);
				modelMap.put("artists", artists);
				modelMap.put("galleries", galleries);
				modelMap.put("songs", songs);
				return "upload/index";
			} catch (Exception e) {
						System.err.println(e.getMessage());
					}
			return "upload/index";
		}
		return "redirect:/user/login";			
	}
	
	
	@RequestMapping(value = { "uploadsong" }, method = RequestMethod.GET)
	public String add(ModelMap model,HttpSession session) {
		session.getAttribute("username");
		model.addAttribute("song", new Song());
		boolean check = CheckLogin.checkLogin(session.getAttribute("username"));
		if(check) {
			return "upload/index";
		}
		return "redirect:/user/login";
	}
	
	@RequestMapping(value = { "uploadsong" }, method = RequestMethod.POST)
	public String add(@ModelAttribute("song") Song song,
			@RequestParam(value = "filephoto") MultipartFile filephoto,
			@RequestParam(value = "fileurl") MultipartFile fileurl,
			ModelMap model,HttpSession session) {
		session.getAttribute("username");
		boolean check = CheckLogin.checkLogin(session.getAttribute("username"));
		if(check) {
			try {					
				UploadService uploadService = APIClient.getClient().create(UploadService.class);
				//up Song URL
			    String fileNameSongUrl = System.currentTimeMillis() + "_" + fileurl.getOriginalFilename();
				System.out.println(fileNameSongUrl);
				String songUrl1 =UploadHelper2.uploadSongUrl(ser, fileurl);
				song.setUrl(songUrl1);
				//up Song Photo
			    String fileNameSongPhto = System.currentTimeMillis() + "_" + filephoto.getOriginalFilename();
			    System.out.println(fileNameSongPhto);
				String songPhoto1 =UploadHelper2.uploadSongPhoto(ser, filephoto);
				song.setPhoto(songPhoto1);
				String artistId = String.valueOf(song.getArtistId());
				String categoriesId = String.valueOf(song.getCategoryId());			
				String a = uploadService.create(song,artistId, categoriesId).execute().body().string();
				System.out.println(a);
				return "redirect:/upload/index";
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
			return "upload/index";			
		}
		return "redirect:/user/login";
		
	}
	
	@RequestMapping(value ="singleupload", method = RequestMethod.POST)
	public String singleupload(@RequestParam(value = "file") MultipartFile file, RedirectAttributes redirect,HttpSession session) {
		session.getAttribute("username");
		boolean check = CheckLogin.checkLogin(session.getAttribute("username"));
		if(check) {
			System.out.println(file.getOriginalFilename());
			String fileName= UUID.randomUUID().toString().replace("-", "");
			System.out.println(fileName);
			String fileNameupload =UploadHelper2.upload(ser, file);
			System.out.println(fileNameupload);
			redirect.addFlashAttribute("fileName", fileNameupload);
			return "redirect:/upload/index";
		}
		return "redirect:/user/login";				
	}
	
	@RequestMapping(value = { "deletesong" }, method = RequestMethod.GET)
	public String deletesong(@RequestParam("id") int id, ModelMap model,HttpSession session, @ModelAttribute("song") Song song) {		
		session.getAttribute("username");
		boolean check = CheckLogin.checkLogin(session.getAttribute("username"));
		if(check) {
			try {
				model.put("song", song);
				UploadService uploadService = APIClient.getClient().create(UploadService.class);
				String deletesong = uploadService.deleteSong(id).execute().body().string();				
				System.out.println(deletesong);
				List<Song> songs = uploadService.listAllSong().execute().body();
				model.put("songs", songs);
				return "upload/index";	
 			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
			return "upload/index";	
		}
		return "redirect:/user/login";
	}
		
	@Override
	public void setServletContext(ServletContext servletContext) {
		this.ser =servletContext;
	}

	
	
		
}
