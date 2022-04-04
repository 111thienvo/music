package com.luv2code.imusic.repository;

import com.luv2code.imusic.entity.User;
import com.luv2code.imusic.entity.customInterface.UserInfo;
import com.luv2code.imusic.entity.customInterface.UserRoleInfo;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends PagingAndSortingRepository<User, Integer> {
	@Query("SELECT u FROM User u WHERE u.email = :email")
	public User getUserByEmail(@Param("email") String email);

	@Query("SELECT u FROM User u WHERE u.username = :username")
	public User getUserByUserName(@Param("username") String username);

	@Query("SELECT u FROM User u WHERE u.email = ?1")
	public User findByEmail(@Param("email") String email);

	@Query("select new com.luv2code.imusic.entity.customInterface.UserInfo(id, email, password, username, enabled, photos, verificationCode, createdTime, roles) from User where username = :username")
	public UserInfo findByUsernameInfo(@Param("username") String username);

	@Query("from User where username = :username")
	public User findByUsername(@Param("username") String username);
	
	
	@Query("SELECT u FROM User u WHERE u.username = ?1")
	public User findByUserName(@Param("username") String username);

	@Query("UPDATE User u SET u.enabled = true WHERE u.id = ?1")
	@Modifying
	public void enable(Integer id);

	@Query("SELECT u FROM User u WHERE CONCAT(u.id, ' ', u.username,' ', u.email )  LIKE %:keyword%")
	public Page<User> findAll(@Param("keyword") String keyword, @Param("pageable") Pageable pageable);

	@Query("SELECT u FROM User u WHERE u.verificationCode = ?1")
	public User findByVerificationCode(String code);

	@Query("SELECT u FROM User u")
	public List<UserInfo> findAll2();


//    @Query(value="SELECT User.username, Role.name FROM users LEFT OUTER JOIN users_roles ON users.id = users_roles.user_id LEFT OUTER JOIN roles ON users_roles.role_id = roles.id WHERE username = :username", nativeQuery=true)
//    public List<User> findNameAndRole(String username);

//  @Query("select u FROM User u  JOIN u.roles r where u.username = :username")
//  public List<User> findNameAndRole(String username);


  
//
//  @Query("select u from User u join Role r  where  u.username =: username")
//  public List<User> findNameAndRole(String username);
//  
	

	  @Query(value = "SELECT Role.name FROM User LEFT OUTER JOIN users_roles ON users.id = users_roles.user_id LEFT OUTER JOIN Role ON users_roles.role_id = roles.id WHERE User.username = username", nativeQuery = true)
	  public List<User> findNameAndRole(String username);
	  
  
 



}
