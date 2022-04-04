package com.luv2code.imusic.entity;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.util.*;

@Entity
@Table(name = "song")
@NoArgsConstructor
@Getter
@Setter
@ToString
public class Song {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(length = 64, nullable = false)
    private String name;

    @Column(length = 256, nullable = false)
    private String introduction;

    @Column(name = "created_time")
    private Date createTime;

    @Column(name = "updated_time")
    private Date updateTime;

    @Column(nullable = false)
    private String photo;

    @Column(length = 128)
    private String lyric;

    @Column( nullable = false)
    private String url;


    @Column(nullable = false)
    private boolean enabled;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
            name = "songs_categories",
            joinColumns=
            @JoinColumn(name="song_id", referencedColumnName="id"),
            inverseJoinColumns=
            @JoinColumn(name="category_id", referencedColumnName="id")
    )
    Set<Category> categories =  new HashSet<>();

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
            name = "songs_artists",
            joinColumns=
            @JoinColumn(name="song_id", referencedColumnName="id"),
            inverseJoinColumns=
            @JoinColumn(name="artist_id", referencedColumnName="id")
    )
    Set<Artist> artists =  new HashSet<>();

    public void addArtist(Artist artist ) {
        this.artists.add(artist);
    }

    public void addCategory(Category category ) {
        this.categories.add(category);
    }





    public boolean hasArtist(String artistName) {
        Iterator<Artist> iterator = this.artists.iterator();

        while (iterator.hasNext()) {
            Artist artist = iterator.next();
            if (artist.getName().equals(artistName)) {
                return true;
            }
        }
        return false;
    }

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

	public String getIntroduction() {
		return introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getLyric() {
		return lyric;
	}

	public void setLyric(String lyric) {
		this.lyric = lyric;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public Set<Category> getCategories() {
		return categories;
	}

	public void setCategories(Set<Category> categories) {
		this.categories = categories;
	}

	public Set<Artist> getArtists() {
		return artists;
	}

	public void setArtists(Set<Artist> artists) {
		this.artists = artists;
	}
    
    
}
