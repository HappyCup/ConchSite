package org.dao;

import java.util.List;

import org.model.Comment;

public interface CmtDao {
	public List getAllBySong(int idSong);
	public boolean addCmt(Comment cmt);
	public boolean deleteCmt(int idCmt);
	//public boolean deleteCmtsBySong(int idSong);
	//public boolean deleteCmtsByUser(int idUser);
}
