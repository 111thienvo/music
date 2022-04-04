package com.luv2code.imusic.entity.customInterface;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

//@Data
//@AllArgsConstructor
//@NoArgsConstructor
//@ToString
//@JsonIgnoreProperties(ignoreUnknown = true)
//@JsonInclude(JsonInclude.Include.NON_DEFAULT)
public class UserRoleInfo {

	private String username;
	private int id_role;
	private String name_role;
	
	

	public String getUsername() {
		return username;
	}



	public void setUsername(String username) {
		this.username = username;
	}



	public int getId_role() {
		return id_role;
	}



	public void setId_role(int id_role) {
		this.id_role = id_role;
	}



	public String getName_role() {
		return name_role;
	}



	public void setName_role(String name_role) {
		this.name_role = name_role;
	}



	public UserRoleInfo(String username, int id_role, String name_role) {
		super();
		this.username = username;
		this.id_role = id_role;
		this.name_role = name_role;
	}



	@Override
	public String toString() {
		return "UserRoleInfo [username=" + username + ", id_role=" + id_role + ", name_role=" + name_role + "]";
	}

	
}
