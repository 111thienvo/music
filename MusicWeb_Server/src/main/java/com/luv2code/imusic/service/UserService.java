package com.luv2code.imusic.service;

import net.bytebuddy.utility.RandomString;

import org.apache.commons.codec.language.bm.Rule.RPattern;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.thymeleaf.context.Context;

import com.luv2code.imusic.entity.Role;
import com.luv2code.imusic.entity.Song;
import com.luv2code.imusic.entity.User;
import com.luv2code.imusic.entity.customInterface.UserInfo;
import com.luv2code.imusic.entity.customInterface.UserRoleInfo;
import com.luv2code.imusic.repository.RoleRepository;
import com.luv2code.imusic.repository.UserRepository;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@Service
@Transactional
public class UserService {
	@Autowired
	UserRepository userRepository;

	@Autowired
	RoleRepository roleRepository;

	@Autowired
	RoleService roleService;

//    @Autowired
//    private PasswordEncoder passwordEncoder;

	@Autowired
	private JavaMailSender emailSender;

	@Autowired
	private org.thymeleaf.spring5.SpringTemplateEngine templateEngine;

	public List<User> listAll() {
		return (List<User>) userRepository.findAll();
	}
	
	public Iterable<User> findAll(){
    	return userRepository.findAll();
    }

	public List<User> findNameAndRole(String username) {
		return (List<User>) userRepository.findNameAndRole(username);
	}

	public List<UserInfo> listAll2() {
		return (List<UserInfo>) userRepository.findAll2();
	}

	public List<Role> listRoles() {
		return (List<Role>) roleRepository.findAll();
	}

	// save user
	public User saveUser(User user) {
//		encodePassword(user);
//		User user = new User();
		Role userRole = roleRepository.findRoleByName("ROLE_CUSTOMER");

		user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt()));
		user.setEnabled(false);
		user.setCreatedTime(new Date());
		user.setPhotos("noImage.jpg");

		String randomCode = RandomString.make(64);
		user.setVerificationCode(randomCode);
//		Set<Role> roles = Stream.of(userRole)
//                .collect(Collectors.toCollection(HashSet::new));
//		user.setRoles(roles);
//		
		// cach 2
		Role role = roleRepository.findByRole(2);
		Set<Role> roles = new HashSet<>();
		roles.add(role);
		user.setRoles(roles);

		// cach 3
//		user.setRoles(new HashSet<>(roleRepository.findByName("ROLE_CUSTOMER")));
//		
		return userRepository.save(user);
	}

	public User findid(int id) {

		return userRepository.findById(id).get();
	}

	// update user
	public User updateUser(int id, User user) {

		User useredit = findid(id);
		if (user.getPassword() != null) {
			useredit.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt()));
		} else {
			useredit.setPassword(useredit.getPassword());

		}
		if (user.getPhotos() != null) {
			useredit.setPhotos(user.getPhotos());

		} else {
			useredit.setPhotos(useredit.getPhotos());
		}

		return userRepository.save(useredit);

	}

	public User changepass(int id, User user) {

		User current = findid(id);

		if (!user.getPassword().isEmpty()) {
			user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt()));
		} else {
			user.setPassword(current.getPassword());

		}

		return userRepository.save(current);

	}

	public UserInfo findByUsername(String username) {
		User checkuser = userRepository.findByUsername(username);

		if (checkuser != null) {

			return new UserInfo(checkuser);

		}
		return null;

	}

	// bcrypt pass
	public void encodePassword(User user) {
		user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt()));
//    	System.out.println("pass salt: "+user.getPassword() );
	}

	public boolean isEmailUnique(Integer id, String email) {
		User userByEmail = userRepository.getUserByEmail(email);
		if (userByEmail == null)
			return true;
		else
			return false;
	}

	// check email exists
	public boolean isEmailUnique1(String email) {
		User userByEmail = userRepository.findByEmail(email);
		if (userByEmail == null)
			return true;
		else
			return false;
	}

	// check username exists
	public boolean isUserNameUnique(String username) {
		User user = userRepository.findByUserName(username);
		if (user == null)
			return true;
		else
			return false;
	}

	public UserInfo login(String username, String password) {

		User checkuser = userRepository.findByUsername(username);

		if (checkuser != null && checkuser.isEnabled() == true) {
			if (BCrypt.checkpw(password, checkuser.getPassword())) {
				return new UserInfo(checkuser);
			}

		}
		return null;
	}

	public User logout(String username) {

		User checkuser = userRepository.findByUsername(username);

		if (checkuser != null) {
			checkuser.setEnabled(false);
			return userRepository.save(checkuser);

		}
		return null;
	}

	public UserInfo check(String username, String password) {

		User checkuser = userRepository.findByUsername(username);

		if (checkuser != null) {
			if (BCrypt.checkpw(password, checkuser.getPassword())) {
				return new UserInfo(checkuser);
			}

		}
		return null;
	}

	public void updateUser(User user) {
		userRepository.save(user);
	}

	// send mail
	public void sendVerificationEmail(User user, String siteUrl)
			throws UnsupportedEncodingException, MessagingException {
		String subject = "Please verify your registration";
		String senderName = "Music Online";
		String verifyUrl = siteUrl + "/verify?code=" + user.getVerificationCode();
		try {
			Map<String, Object> model = new HashMap<String, Object>();
			model.put("verifyUrl", verifyUrl);
			model.put("name", user.getUsername());
			Context context = new Context();
			context.setVariables(model);

			String html = templateEngine.process("email/verify-code", context);

			MimeMessage message = emailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message);

			helper.setFrom("222thienvo@gmail.com", senderName);
			helper.setTo(user.getEmail());
			helper.setSubject(subject);
			helper.setText(html, true);
			emailSender.send(message);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

	}

	// test send mail
	public void sendVerificationEmail2(User user, String siteURL)
			throws MessagingException, UnsupportedEncodingException {
		try {
			String senderName = "Music Online";
			String subject = "Please verify your registration";
			String mailcontent = "<p>Dear " + user.getUsername() + ",</p>";
			mailcontent += "<p>Please click the link below to verify your registration:</p>";
			String verifyURL = siteURL + "/verify?code=" + user.getVerificationCode();
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

	// verify
	public boolean verify(String verificationCode) {
		User user = userRepository.findByVerificationCode(verificationCode);

		if (user == null || user.isEnabled()) {
			return false;
		} else {
			user.setVerificationCode("ok");
			user.setEnabled(true);
			userRepository.save(user);

			return true;
		}

	}

}
