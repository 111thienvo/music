package com.luv2code.imusic.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.luv2code.imusic.entity.Role;
import com.luv2code.imusic.entity.User;
import com.luv2code.imusic.repository.RoleRepository;


@Service
@Transactional
public class RoleService {
	
	@Autowired
	private RoleRepository roleRepository;
	
	public void role(User user) {
		Role role = new Role();
		role.getUsers().add(user);
	}
	
	public Role find(int id) {
		return roleRepository.findById(id).get();
	}
	
	public Role findRoleByName(String name) {
		return roleRepository.findRoleByName(name);
	}
}
