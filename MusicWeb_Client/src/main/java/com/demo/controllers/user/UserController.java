package com.demo.controllers.user;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.function.Consumer;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.demo.configurations.GetSiteUrl;
import com.demo.entity.User;
import com.demo.helpers.UploadHelper;
import com.demo.services.user.APIClient;
import com.demo.services.user.UserService;

import okhttp3.ResponseBody;

@Controller
@RequestMapping(value = { "user" })
public class UserController implements ServletContextAware {
	private static final String alpha = "abcdefghijklmnopqrstuvwxyz"; // a-z
	private static final String alphaUpperCase = alpha.toUpperCase(); // A-Z
	private static final String digits = "0123456789"; // 0-9
	private static final String specials = "~=+%^*/()[]{}/!@#$?|";
	private static final String ALL = alpha + alphaUpperCase + digits + specials;
	private static Random generator = new Random();
	
	private ServletContext servletContext;
	@Autowired
	private JavaMailSender emailSender;

	@RequestMapping(value = { "add_playlist" }, method = RequestMethod.GET)
	public String add_playlist() {

		return "user/add_playlist";
	}
	@RequestMapping(value = { "test" }, method = RequestMethod.GET)
	public String test() {
		return "user/test";
	}

	@RequestMapping(value = { "download" }, method = RequestMethod.GET)
	public String download() {
		return "user/download";
	}

	@RequestMapping(value = { "favourite" }, method = RequestMethod.GET)
	public String favourite() {
		return "user/favourite";
	}

	@RequestMapping(value = { "feature_playlist" }, method = RequestMethod.GET)
	public String feature_playlist() {
		return "user/feature_playlist";
	}

	@RequestMapping(value = { "register" }, method = RequestMethod.GET)
	public String register(ModelMap modelMap) {
		User user = new User();
		modelMap.put("user", user);
		return "user/register";
	}
	
	@RequestMapping(value = { "forgotpassword" }, method = RequestMethod.GET)
	public String forgotpassword(ModelMap modelMap) {
		User user = new User();
		modelMap.put("user", user);
		return "user/forgotpassword";
	}
	
	@RequestMapping(value = { "forgotpassword" }, method = RequestMethod.POST)
	public String forgotpassword(ModelMap modelmap, @ModelAttribute("user") User user) {
		try {
			System.out.println(randomPassword(8)); 
			UserService userAPIService = APIClient.getClient().create(UserService.class);
			if (user.getUsername() != "" && user.getEmail() != "") {
				User temp = userAPIService.findbyUsername(user.getUsername()).execute().body();
				if (temp != null) {
					if(user.getEmail().equalsIgnoreCase(temp.getEmail())) {
						String newpass = randomPassword(8);
						user.setPassword(newpass);
						sendForgotPasswordEmail(user, newpass);
						userAPIService.edit(temp.getId(), user).execute().body();
						modelmap.put("msg", "Please Check mail");
						return "user/login";
					}
					modelmap.put("msg", "Email Invalid");
					return "user/forgotpassword";
					
				} else {

					modelmap.put("msg", "Invalid");
					return "user/forgotpassword";
				}

			}
			modelmap.put("msg", "Please enter user and email");
			return "user/forgotpassword";
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "home/index";
	}

	@RequestMapping(value = { "changepass" }, method = RequestMethod.GET)
	public String changepass() {
		return "user/changepass";
	}

	@RequestMapping(value = { "changepass" }, method = RequestMethod.POST)
	public String changepass(HttpSession session, ModelMap modelMap, @RequestParam("old_pass") String old_pass,
			@RequestParam("new_pass") String new_pass, @RequestParam("confirm_pass") String confirm_pass) {
		try {
			UserService userAPIService = APIClient.getClient().create(UserService.class);
			String username = session.getAttribute("username").toString();
			User user = new User();
			User check = userAPIService.findbyUsername(username).execute().body();
			if (old_pass.trim() == "" || new_pass.trim() == "" || confirm_pass.trim() == "") {
				modelMap.put("msg", "Please don't leave it blank ");
				return "user/changepass";
			} else {
				if (BCrypt.checkpw(old_pass, check.getPassword()) == false) {
					modelMap.put("msg", "Old password Invalid");
					return "user/changepass";
				} else {
					if (!new_pass.trim().equalsIgnoreCase(confirm_pass)) {
						modelMap.put("msg", "New password and Confirm password do not match");
						return "user/changepass";
					} else {

						if (BCrypt.checkpw(new_pass, check.getPassword())) {
							modelMap.put("msg", "New password exist");
							return "user/changepass";
						} else {

							user.setPassword(new_pass);
							String change = userAPIService.edit(check.getId(), user).execute().body().string();
							if (change.equalsIgnoreCase("Success")) {
								modelMap.put("msg", "Success");
								return "user/changepass";
							}

						}
					}

				}

			}

		} catch (

		Exception e) {
			System.err.println(e.getMessage());
		}
		return "404/index";
	}

	@RequestMapping(value = { "verify" }, method = RequestMethod.GET)
	public String verify(ModelMap modelMap, @RequestParam("code") String code) throws IOException {
		UserService userAPIService = APIClient.getClient().create(UserService.class);
		String check = userAPIService.verify(code).execute().body().string();
		if (check.equalsIgnoreCase("True")) {
			modelMap.put("msg", "Success, Login now!");
			return "user/login";
		}
		return "404/index";
	}

	@RequestMapping(value = { "profile" }, method = RequestMethod.GET)
	public String profile(HttpSession session, ModelMap modelMap) {
		try {
			UserService userAPIService = APIClient.getClient().create(UserService.class);

			String username = session.getAttribute("username").toString();
			User user = userAPIService.findbyUsername(username).execute().body();
			modelMap.put("user", user);
			return "user/profile";
		} catch (Exception e) {
			System.err.println(e.getMessage());
		}
		return "404/index";
	}

	@RequestMapping(value = { "changeImage" }, method = RequestMethod.POST)
	public String changeImage(HttpSession session, ModelMap modelMap, @RequestParam(value = "file") MultipartFile file

	) {
		try {
			UserService userAPIService = APIClient.getClient().create(UserService.class);
			String username = session.getAttribute("username").toString();
			User user = new User();
			User check = userAPIService.findbyUsername(username).execute().body();
			String fileNameUpload = UploadHelper.upload(servletContext, file);
			if (fileNameUpload != null) {

				user.setPhotos(fileNameUpload);

			} else {
				user.setPhotos(check.getPhotos());
			}

			String change = userAPIService.edit(check.getId(), user).execute().body().string();
			if (change.equalsIgnoreCase("Success")) {
				modelMap.put("msg", "Success");
				return "redirect:/user/profile";
			}

			return "404/index";
		} catch (Exception e) {
			System.err.println(e.getMessage());
		}
		return "404/index";
	}

	@RequestMapping(value = { "register" }, method = RequestMethod.POST)
	public String register(ModelMap modelmap, @ModelAttribute("user") @Valid User user, BindingResult bindingResult,
			HttpServletRequest request, RedirectAttributes redirectAttributes)
			throws UnsupportedEncodingException, MessagingException {
		try {
			if (bindingResult.hasErrors() == false) {
				UserService userAPIService = APIClient.getClient().create(UserService.class);
				String checkuser = userAPIService.isUserNameUnique(user).execute().body().string();
				if (checkuser.equalsIgnoreCase("True")) {
					String checkmail = userAPIService.isEmailUnique(user).execute().body().string();

					if (checkmail.equalsIgnoreCase("True")) {
						userAPIService.register(user).execute().body();
						User checkSendMail = userAPIService.check(user.getUsername(), user.getPassword()).execute()
								.body();
						if (checkSendMail != null) {
							String siteUrl = GetSiteUrl.getSiteUrl(request);
							sendVerificationEmail(checkSendMail, siteUrl);
						}
						modelmap.put("msg", "Please check your email to login");
						return "user/register";
					}
					modelmap.put("msg", "Email exist");
					return "user/register";
				}
				modelmap.put("msg", "User exist");
				return "user/register";
			}
			System.out.println(bindingResult.hasErrors());
			return "user/register";

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "home/index";
	}

	@RequestMapping(value = { "logout" }, method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.removeAttribute("username");
		return "redirect:/home/index";
	}

	@RequestMapping(value = { "login" }, method = RequestMethod.GET)
	public String login(ModelMap modelMap) {
		User user = new User();
		modelMap.put("user", user);
		return "user/login";
	}

	@RequestMapping(value = { "login" }, method = RequestMethod.POST)
	public String login(ModelMap modelmap, HttpSession session, @RequestParam("username") String username,
			@RequestParam("password") String password) {
		try {
			
		    
			 
			UserService userAPIService = APIClient.getClient().create(UserService.class);
			if (username != "" && password != "") {
				User temp = userAPIService.login(username, password).execute().body();
				if (temp != null) {

					session.setAttribute("username", username);
					modelmap.put("msg", "Success");
					return "redirect:/home/index";
				} else {

					modelmap.put("msg", "Account Invalid");
					return "user/login";
				}

			}
			modelmap.put("msg", "Please enter user and password");
			return "user/login";
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "home/index";
	}

	// test send mail
	public void sendVerificationEmail(User user, String siteURL)
			throws MessagingException, UnsupportedEncodingException {
		try {
			String senderName = "Music Online";
			String subject = "Please verify your registration";
			String mailcontent = "<p>Dear " + user.getUsername() + ",</p>";
			mailcontent += "<p>Please click the link below to verify your registration:</p>";
			String verifyURL = siteURL + "/user/verify?code=" + user.getVerificationCode();
			mailcontent += "<h3><a href=\"" + verifyURL + "\">VERIFY</a></h3>";

			mailcontent += "<p>Thanks you <br> Music Online</p>";

			MimeMessage message = emailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message);

			helper.setFrom("222thienvo@gmail.com", senderName);
			helper.setTo(user.getEmail());
			helper.setSubject(subject);
			helper.setText(mailcontent, true);

			emailSender.send(message);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

	}
	
	public void sendForgotPasswordEmail(User user, String newpass )
			throws MessagingException, UnsupportedEncodingException {
		try {
			String senderName = "Music Online";
			String subject = "Please reset your password";
			String mailcontent = "<p>Dear " + user.getUsername() + ",</p>";
			mailcontent += "<p> This new Password: " + "<b>" + newpass + "</b>" + "</p>";
			mailcontent += "<p>Thanks you <br> Music Online</p>";

			MimeMessage message = emailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message);

			helper.setFrom("222thienvo@gmail.com", senderName);
			helper.setTo(user.getEmail());
			helper.setSubject(subject);
			helper.setText(mailcontent, true);

			emailSender.send(message);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

	}

	public String randomPassword(int numberOfCharactor) {

		List<String> result = new ArrayList<>();
		Consumer<String> appendChar = s -> {
			int number = randomNumber(0, s.length() - 1);
			result.add("" + s.charAt(number));
		};
		appendChar.accept(digits);
		appendChar.accept(specials);
		while (result.size() < numberOfCharactor) {
			appendChar.accept(ALL);
		}
		Collections.shuffle(result, generator);
		return String.join("", result);
	}

	public static int randomNumber(int min, int max) {

		return generator.nextInt((max - min) + 1) + min;
	}

	@Override
	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;

	}
}
