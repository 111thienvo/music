package com.luv2code.imusic.entity;

import lombok.*;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "users")
@NoArgsConstructor
@Getter
@Setter
@ToString
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(length = 128, nullable = false, unique = true)
    private String email;

    @Column(length = 64, nullable = false)
    private String password;

    @Column(length = 64, nullable = false)
    private String username;

    @Column(nullable = false)
    private boolean enabled;

    @Column(length = 64)
    private String photos;

    @Column(name = "verification_code", length = 64)
    private String verificationCode;

    @Column(name = "created_time")
    @JsonFormat(pattern = "dd/MM/yyyy")
    private Date createdTime;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
            name = "users_roles",
            joinColumns=
            @JoinColumn(name="user_id", referencedColumnName="id"),
            inverseJoinColumns=
            @JoinColumn(name="role_id", referencedColumnName="id")
    )
    private Set<Role> roles = new HashSet<>();
    
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
            name = "follow",
            joinColumns=
            @JoinColumn(name="user_id", referencedColumnName="id"),
            inverseJoinColumns=
            @JoinColumn(name="artist_id", referencedColumnName="id")
    )
    private Set<Artist> artists = new HashSet<>();


//    public User(String email, String password, String username, boolean enabled) {
//        this.email = email;
//        this.password = password;
//        this.username = username;
//        this.enabled = enabled;
//    }

    public void addFollow(Artist artist ) {
        artists.add(artist);
    }

   
	public void addRole(Role role ) {
        roles.add(role);
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

	public Set<Role> getRoles() {
		return roles;
	}

	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}
	
	 public Set<Artist> getArtists() {
			return artists;
		}

		public void setArtists(Set<Artist> artists) {
			this.artists = artists;
		}


	public User(int id, String email, String password, String username, boolean enabled, String photos,
			String verificationCode, Date createdTime, Set<Role> roles, Set<Artist> artists) {
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
		this.artists = artists;
	}

	public User() {
		super();
	}
    
    
}
