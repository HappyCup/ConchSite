package org.dao;

import java.util.List;

import org.model.Song;

public interface SongDao {
	public Song getById(int idSong);
	public List getByName(String name);
	public List getByType(String type);
	public List getAll();
	public List getOrderByScore();
	public List getOrderByTime();
	public List getHotInArea(String area,int max);
	public List search(String name);
	public boolean add(Song song);
	public boolean update(Song song);
	public boolean delete(int idSong);
}
