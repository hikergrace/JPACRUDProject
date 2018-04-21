package com.skilldistillery.jpacrud.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.skilldistillery.jpacrud.entities.Tune;

@Transactional
@Component
public class TuneDAOJPAImpl implements TuneDAO{
	
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Tune create(Tune music) {
		em.persist(music);
	    em.flush();
		return music;
	}

	@Override
	public Tune retreiveById(int id) {
		return em.find(Tune.class, id);
	}


	@Override
	public Tune update(Tune music) {
//		Tune managedTune = em.find(Tune.class, id);
//		managedTune.setName(music.getName());
//		managedTune.setKey();
//		managedTune.getRhythm();
//		em.persist(music);
//	    em.flush();
		return music;
	}

	@Override
	public boolean delete(Integer id) {
		Tune music = retreiveById(id);
		em.remove(music);
		em.flush();
		return true;
	}

	@Override
	public List<Tune> index() {
		String queryTune = "SELECT t FROM Tune t ORDER BY t.name";
		List<Tune> t = em.createQuery(queryTune, Tune.class).getResultList();
		return t;
	}

	@Override
	public List<Tune> retreiveAll() {
		// TODO Auto-generated method stub
		return null;
	}
	
}
