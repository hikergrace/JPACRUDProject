package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Tune;

public interface TuneDAO {
	Tune create(Tune music);
	Tune retreiveById(int id);
	List<Tune> retreiveAll();
	Tune update(Tune updatedMusic);
	boolean delete(Integer id);
	public List<Tune> index();
}
