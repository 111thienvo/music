package com.luv2code.imusic.controller;


import com.luv2code.imusic.entity.Artist;
import com.luv2code.imusic.entity.Role;
import com.luv2code.imusic.entity.User;
import com.luv2code.imusic.entity.customInterface.UserInfo;
import com.luv2code.imusic.service.UserService;
import com.luv2code.imusic.utils.GetSiteUrl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.MimeTypeUtils;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.io.UnsupportedEncodingException;
import java.net.http.HttpRequest;
import java.util.Date;
import java.util.List;

@RestController
@RequestMapping("api/users")

public class UserController {
	@Autowired
	private UserService service;

	@RequestMapping(value = "register", method = RequestMethod.POST, consumes = MimeTypeUtils.APPLICATION_JSON_VALUE, produces = MimeTypeUtils.APPLICATION_JSON_VALUE)
	public ResponseEntity<String> register(@RequestBody User user, HttpServletRequest request) {
		try {

			if (service.isUserNameUnique(user.getUsername()) == false) {
				return new ResponseEntity<String>("Fail",HttpStatus.BAD_REQUEST);

			} else {
				if (service.isEmailUnique1(user.getEmail()) == false) {
					return new ResponseEntity<String>("Fail",HttpStatus.BAD_REQUEST);
				} else {
//					String siteUrl = GetSiteUrl.getSiteUrl(request);				
//					service.sendVerificationEmail2(user, siteUrl);
					service.saveUser(user);
					return new ResponseEntity<String>("Success", HttpStatus.OK);
				}
			}
		} catch (Exception e) {
			System.err.println(e.getMessage());
			return new ResponseEntity<String>("Fail",HttpStatus.BAD_REQUEST);
		}

	}
	
	@RequestMapping(value = "edit/{id}", method = RequestMethod.PUT, consumes = MimeTypeUtils.APPLICATION_JSON_VALUE, produces = MimeTypeUtils.APPLICATION_JSON_VALUE)
	public ResponseEntity<String> edit(@PathVariable("id") int id,@RequestBody User user) {
		try {
			service.updateUser(id,user);
			return new ResponseEntity<String>("Success",HttpStatus.OK);
		} catch (Exception e) {
			System.err.println(e.getMessage());
			return new ResponseEntity<String>("Fail",HttpStatus.BAD_REQUEST);
		}

	}
	
	

	@RequestMapping(value = "isEmailUnique", method = RequestMethod.POST, consumes = MimeTypeUtils.APPLICATION_JSON_VALUE, produces = MimeTypeUtils.APPLICATION_JSON_VALUE)
	public ResponseEntity<String> isEmailUnique(@RequestBody User user, HttpServletRequest request) {
		try {

			if (service.isEmailUnique1(user.getEmail()) == false) {
				return new ResponseEntity<String>("False", HttpStatus.OK);
			} else {
				return new ResponseEntity<String>("True",HttpStatus.OK);
			}
		} catch (Exception e) {
			System.err.println(e.getMessage());
			return new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		}

	}
	@RequestMapping(value = "isUserNameUnique", method = RequestMethod.POST, consumes = MimeTypeUtils.APPLICATION_JSON_VALUE, produces = MimeTypeUtils.APPLICATION_JSON_VALUE)
	public ResponseEntity<String> isUserNameUnique(@RequestBody User user, HttpServletRequest request) {
		try {

			if (service.isUserNameUnique(user.getUsername()) == false) {
				return new ResponseEntity<String>("False",HttpStatus.OK);

			} else {

				return new ResponseEntity<String>("True",HttpStatus.OK);
			}
		} catch (Exception e) {
			System.err.println(e.getMessage());
			return new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		}

	}

	@PostMapping("login")
	public ResponseEntity<UserInfo> login(String username, String password) {
		try {
			String user = username.trim();
			String pass = password.trim();
			if (service.login(user, pass) != null) {
				return new ResponseEntity<UserInfo>(service.login(user, pass), HttpStatus.OK);
			}
			return new ResponseEntity<UserInfo>(HttpStatus.BAD_REQUEST);
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<UserInfo>(HttpStatus.BAD_REQUEST);
		}
	}
	@GetMapping("checkusername")
	public ResponseEntity<UserInfo> checkusername(String username) {
		try {
		
			System.out.println(username);
			if (service.findByUsername(username) != null) {
				return new ResponseEntity<UserInfo>(service.findByUsername(username), HttpStatus.OK);
			}
			return new ResponseEntity<UserInfo>(HttpStatus.BAD_REQUEST);
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<UserInfo>(HttpStatus.BAD_REQUEST);
		}
	}
	
	@GetMapping("findbyUsername")
	public ResponseEntity<UserInfo> findbyUsername(String username) {
		try {
			
			if (service.findByUsername(username) != null) {
				
				return new ResponseEntity<UserInfo>(service.findByUsername(username), HttpStatus.OK);
			}
			return new ResponseEntity<UserInfo>(HttpStatus.BAD_REQUEST);
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<UserInfo>(HttpStatus.BAD_REQUEST);
		}
	}
	
	

	@PostMapping("check")
	public ResponseEntity<UserInfo> check(String username, String password) {
		try {
			String user = username.trim();
			String pass = password.trim();
			if (service.check(user, pass) != null) {
				return new ResponseEntity<UserInfo>(service.check(user, pass), HttpStatus.OK);
			}
			return new ResponseEntity<UserInfo>(HttpStatus.BAD_REQUEST);
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<UserInfo>(HttpStatus.BAD_REQUEST);
		}
	}
	

	
//	
//	@PostMapping("checlRole")
//	public ResponseEntity<UserInfo> checlRole(String username) {
//		try {
//			String user = username.trim();
//			
//			if (service.check(user, pass) != null) {
//				return new ResponseEntity<UserInfo>(service.check(user, pass), HttpStatus.OK);
//			}
//			return new ResponseEntity<UserInfo>(HttpStatus.BAD_REQUEST);
//		} catch (Exception e) {
//			e.printStackTrace();
//			return new ResponseEntity<UserInfo>(HttpStatus.BAD_REQUEST);
//		}
//	}



	@GetMapping("verify/{code}")
	public ResponseEntity<String> verifyUser(@PathVariable("code") String code) {
		try {
			boolean verified = service.verify(code);
			if (verified == true) {
				return new ResponseEntity<String>("True", HttpStatus.OK);
			}else {
				return new ResponseEntity<String>("False", HttpStatus.OK);
			}
		

		} catch (Exception e) {
			System.out.println(e.getMessage());
			return new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		}
	}

}
