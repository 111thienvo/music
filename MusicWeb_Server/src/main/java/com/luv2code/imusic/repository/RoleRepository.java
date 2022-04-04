package com.luv2code.imusic.repository;

import com.luv2code.imusic.entity.Role;

import java.util.Set;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface RoleRepository extends CrudRepository<Role, Integer> {

    @Query("from Role where name = :name")
	public Role findRoleByName(@Param("name") String name);
    
    @Query("from Role where id = :id")
   	public Role findByRole(@Param("id") int id);
    
    public Set<Role> findByName(String name);
}
