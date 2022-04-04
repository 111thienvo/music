package com.luv2code.imusic.entity;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name = "artist")
@NoArgsConstructor
@Getter
@Setter
@ToString
public class Artist {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(length = 64, nullable = false)
    private String name;

    @Column(name = "realname",length = 64)
    private String realName;

    @Column(length = 128, nullable = false)
    private String photo;

    @Column(nullable = false)
    private String introduction;

    @Column(nullable = false)
    private boolean enabled;

    @Column(length = 128)
    private String nation;

    @Column(length = 64)
    private String birthday;
    


	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRealName() {
		return realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getIntroduction() {
		return introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

    
    

}
/*
package com.luv2code.imusic.entity;
// Generated Jan 2, 2022, 10:10:11 PM by Hibernate Tools 5.1.10.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;


@Entity
@Table(name = "artist", catalog = "project_music")
public class Artist implements java.io.Serializable {

	private Integer id;
	private String name;
	private String realname;
	private String photo;
	private String introduction;
	private boolean enabled;
	private String nation;
	private String birthday;

	public Artist() {
	}

	public Artist(String name, String realname, String photo, String introduction,
			boolean enabled, String nation, String birthday) {
		this.name = name;
		this.realname = realname;
		this.photo = photo;
		this.introduction = introduction;
		this.enabled = enabled;
		this.nation = nation;
		this.birthday = birthday;
	}

	@GenericGenerator(name = "generator", strategy = "foreign", parameters = @Parameter(name = "property", value = "songsArtists"))
	@Id
	@GeneratedValue(generator = "generator")

	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	

	@Column(name = "name", nullable = false, length = 250)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "realname", nullable = false, length = 250)
	public String getRealName() {
		return this.realname;
	}

	public void setRealName(String realname) {
		this.realname = realname;
	}

	@Column(name = "photo", nullable = false, length = 250)
	public String getPhoto() {
		return this.photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	@Column(name = "introduction", nullable = false, length = 250)
	public String getIntroduction() {
		return this.introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	@Column(name = "enabled", nullable = false)
	public boolean isEnabled() {
		return this.enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	@Column(name = "nation", nullable = false, length = 250)
	public String getNation() {
		return this.nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	@Column(name = "birthday", nullable = false, length = 250)
	public String getBirthday() {
		return this.birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

}
*/

