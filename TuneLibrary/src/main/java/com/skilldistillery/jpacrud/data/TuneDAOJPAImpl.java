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
	public Tune update(Tune updatedMusic) {
		Tune managedTune = em.find(Tune.class, updatedMusic.getId());
		managedTune.setName(updatedMusic.getName());
		managedTune.setRhythm(updatedMusic.getRhythm());
		managedTune.setKey(updatedMusic.getKey());
		managedTune.setProvenance(updatedMusic.getProvenance());
		managedTune.setSoundFast(updatedMusic.getSoundFast());
		managedTune.setSoundSlow(updatedMusic.getSoundSlow());
		managedTune.setOtherNames(updatedMusic.getOtherNames());
		managedTune.setNotes(updatedMusic.getNotes());
		em.persist(updatedMusic);
	    em.flush();
		return managedTune;
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
		return null;
	}
	
}
