package com.luv2code.imusic.entity.customInterface;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import com.amazonaws.services.elasticmapreduce.model.HadoopJarStepConfig;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.luv2code.imusic.entity.Role;
import com.luv2code.imusic.entity.User;

public class UserInfo {

	private int id;
	private String email;
	private String password;
	private String username;
	private boolean enabled;
	private String photos;
	private String verificationCode;
	@JsonFormat(pattern = "dd/MM/yyyy")
	private Date createdTime;

	private Set<Role> roles = new HashSet<>();
	
	

	public Set<Role> getRoles() {
		return roles;
	}
	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	public String getPhotos() {
		return photos;
	}
	public void setPhotos(String photos) {
		this.photos = photos;
	}
	public String getVerificationCode() {
		return verificationCode;
	}
	public void setVerificationCode(String verificationCode) {
		this.verificationCode = verificationCode;
	}
	public Date getCreatedTime() {
		return createdTime;
	}
	public void setCreatedTime(Date createdTime) {
		this.createdTime = createdTime;
	}


	public UserInfo() {
		super();
	}

	
public UserInfo(int id, String email, String password, String username, boolean enabled, String photos,
		String verificationCode, Date createdTime, Set<Role> roles) {
	super();
	this.id = id;
	this.email = email;
	this.password = password;
	this.username = username;
	this.enabled = enabled;
	this.photos = photos;
	this.verificationCode = verificationCode;
	this.createdTime = createdTime;
	this.roles = roles;
}
//	@Override
//	public String toString() {
//		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
//		return "UserInfo [id=" + id + ", email=" + email + ", password=" + password + ", username=" + username
//				+ ", enabled=" + enabled + ", photos=" + photos + ", verificationCode=" + verificationCode
//				+ ", createdTime=" + simpleDateFormat.format(createdTime) + "]";
//	}
	
	
	
	
	
	
	

	public UserInfo(User user) {
		super();
		this.id = user.getId();
		this.email = user.getEmail();
		this.password = user.getPassword();
		this.username = user.getUsername();
		this.enabled = user.isEnabled();
		this.photos = user.getPhotos();
		this.verificationCode = user.getVerificationCode();
		this.createdTime = user.getCreatedTime();	
		
	}
	@Override
	public String toString() {
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
		return "UserInfo [id=" + id + ", email=" + email + ", password=" + password + ", username=" + username
				+ ", enabled=" + enabled + ", photos=" + photos + ", verificationCode=" + verificationCode
				+ ", createdTime=" + simpleDateFormat.format(createdTime) + ", roles=" + roles + "]";
	}
	
}
