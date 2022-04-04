package com.luv2code.imusic.entity;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "gallery")
@NoArgsConstructor
@Getter
@Setter
@ToString
public class Gallery {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(nullable = false)
    private String title;

    @Column(name = "section_type",nullable = false)
    private String sectionType;

    @Column(nullable = false)
    private boolean enabled;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
            name = "gallery_songs",
            joinColumns=
            @JoinColumn(name="gallery_id", referencedColumnName="id"),
            inverseJoinColumns=
            @JoinColumn(name="song_id", referencedColumnName="id")
    )
    Set<Song> songs =  new HashSet<>();


    public void addSong(Song song ) {
        this.songs.add(song);
    }


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


	public Set<Song> getSongs() {
		return songs;
	}


	public void setSongs(Set<Song> songs) {
		this.songs = songs;
	}
    
    

}
