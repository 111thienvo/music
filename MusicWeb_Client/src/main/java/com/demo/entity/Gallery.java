package com.demo.entity;
// Generated Jan 12, 2022, 7:27:30 AM by Hibernate Tools 5.1.10.Final

import java.util.HashSet;
import java.util.Set;

import com.google.gson.annotations.SerializedName;

/**
 * Gallery generated by hbm2java
 */
public class Gallery {

	@SerializedName("id")
	private Integer id;
	
	@SerializedName("title")
	private String title;
	
	@SerializedName("sectionType")
	private String sectionType;
	
	@SerializedName("enabled")
	private boolean enabled;
	
	
	@SerializedName("gallerySongses")
	private Set<GallerySongs> gallerySongses = new HashSet<GallerySongs>(0);


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getSectionType() {
		return sectionType;
	}


	public void setSectionType(String sectionType) {
		this.sectionType = sectionType;
	}


	public boolean isEnabled() {
		return enabled;
	}


	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}


	public Set<GallerySongs> getGallerySongses() {
		return gallerySongses;
	}


	public void setGallerySongses(Set<GallerySongs> gallerySongses) {
		this.gallerySongses = gallerySongses;
	}


	public Gallery(Integer id, String title, String sectionType, boolean enabled, Set<GallerySongs> gallerySongses) {
		super();
		this.id = id;
		this.title = title;
		this.sectionType = sectionType;
		this.enabled = enabled;
		this.gallerySongses = gallerySongses;
	}


	public Gallery() {
		super();
	}

	

}
