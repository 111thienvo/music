package com.demo.entity;
// Generated Jan 12, 2022, 7:27:30 AM by Hibernate Tools 5.1.10.Final

import java.util.HashSet;
import java.util.Set;

/**
 * Roles generated by hbm2java
 */
public class Roles implements java.io.Serializable {

	private Integer id;
	private String name;
	private String description;
	private Set<UsersRoles> usersRoleses = new HashSet<UsersRoles>(0);

	public Roles() {
	}

	public Roles(String name, String description) {
		this.name = name;
		this.description = description;
	}

	public Roles(String name, String description, Set<UsersRoles> usersRoleses) {
		this.name = name;
		this.description = description;
		this.usersRoleses = usersRoleses;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Set<UsersRoles> getUsersRoleses() {
		return this.usersRoleses;
	}

	public void setUsersRoleses(Set<UsersRoles> usersRoleses) {
		this.usersRoleses = usersRoleses;
	}

}
