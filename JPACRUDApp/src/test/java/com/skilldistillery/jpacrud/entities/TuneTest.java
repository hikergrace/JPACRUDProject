package com.skilldistillery.jpacrud.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class TuneTest {
	private EntityManagerFactory emf;
	private EntityManager em; 
	
	
	@BeforeEach
	void setUp() throws Exception {
		emf = Persistence.createEntityManagerFactory("CrudApp");
		em = emf.createEntityManager();
	}

	@AfterEach
	void tearDown() throws Exception {
	}
	
	@Test
	@DisplayName("Test Tune Entity Mapping")
	void test_tune_entity_mapping() {
		Tune t = em.find(Tune.class, 1);
		assertEquals("Pull the Knife and Stick it Again", t.getName());
		assertEquals("Jig", t.getRhythm());
		assertEquals("Emin", t.getKey());
		assertEquals("Irish", t.getProvenance());
		
	}

//	@Test
//	void test() {
//		fail("Not yet implemented");
//	}

}
