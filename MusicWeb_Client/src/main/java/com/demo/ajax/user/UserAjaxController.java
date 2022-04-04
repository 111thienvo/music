package com.demo.ajax.user;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.ui.ModelMap;
import org.springframework.util.MimeTypeUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.demo.entity.User;
import com.demo.services.user.APIClient;
import com.demo.services.user.UserService;

@RestController
@RequestMapping("ajax/user")
public class UserAjaxController {

	@RequestMapping(value = {
			"login" }, method = RequestMethod.POST, produces = MimeTypeUtils.APPLICATION_JSON_VALUE)
	public User login(@ModelAttribute("user") @Valid User user,ModelMap modelmap, HttpSession session) {

		try {

			UserService userAPIService = APIClient.getClient().create(UserService.class);

			User temp = userAPIService.login(user.getUsername(), user.getPassword()).execute().body();

			if (temp != null) {
				
				session.setAttribute("user", user.getUsername());
				modelmap.put("msg", "Success");
				return user;
			} else {
				
				modelmap.put("msg", "Account Invalid");
				return null;
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return null;

	}
}
