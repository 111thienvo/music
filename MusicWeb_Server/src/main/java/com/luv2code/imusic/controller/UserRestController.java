package com.luv2code.imusic.controller;



import com.luv2code.imusic.entity.User;


import com.luv2code.imusic.entity.customInterface.SongIdName;
import com.luv2code.imusic.entity.customInterface.UserInfo;
import com.luv2code.imusic.entity.customInterface.UserRoleInfo;
import com.luv2code.imusic.service.UserService;
import com.luv2code.imusic.utils.GetSiteUrl;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.util.MimeTypeUtils;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@RestController
@RequestMapping("api/user")
public class UserRestController {
 
    @Autowired
    private  UserService userService;

    @PostMapping("/users/check_email")
    public String checkEmailDuplicated(@Param("id") Integer id, @Param("email") String email) {
        return userService.isEmailUnique(id, email) ? "Ok" : "Duplicated";
    }
    @GetMapping("findall")
	public ResponseEntity<List<User>> findAll() {
		try {
			return new ResponseEntity<List<User>>(userService.listAll(), HttpStatus.OK);
		} catch (Exception e) {
			return new ResponseEntity<List<User>>(HttpStatus.BAD_REQUEST);
		}
	}
    
    @GetMapping("findall2")
//  @RequestMapping(value = "find", method = RequestMethod.GET, 
//			produces = MimeTypeUtils.APPLICATION_JSON_VALUE)
	public ResponseEntity<List<UserInfo>> findAll2() {
		try {
			return new ResponseEntity<List<UserInfo>>(userService.listAll2(), HttpStatus.OK);
		} catch (Exception e) {
			return new ResponseEntity<List<UserInfo>>(HttpStatus.BAD_REQUEST);
		}
	}
    
    @GetMapping("findNameAndRole")
	public ResponseEntity<List<User>> findNameAndRole(String username) {
		try {
			System.err.println(username);
			System.out.println(username);
			return new ResponseEntity<List<User>>(userService.findNameAndRole(username), HttpStatus.OK);
		} catch (Exception e) {
			return new ResponseEntity<List<User>>(HttpStatus.BAD_REQUEST);
		}
	}
    
    


}
