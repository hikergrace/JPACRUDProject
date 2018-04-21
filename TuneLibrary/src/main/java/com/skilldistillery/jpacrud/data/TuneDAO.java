package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Tune;

public interface TuneDAO {
	Tune create(Tune music);
	Tune retreiveById(int id);
	List<Tune> retreiveAll();
	public Tune update(int id, Tune tune);
	boolean delete(Integer id);
	public List<Tune> index();
}
