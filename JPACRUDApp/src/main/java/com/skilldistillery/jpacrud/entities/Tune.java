package com.skilldistillery.jpacrud.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Tune {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "title")
	private String name;

	@Column(name = "rhythm")
	private String rhythm;

	@Column(name = "key")
	private String key;

	@Column(name = "provenance")
	private String provenance;

	@Column(name = "sound_file_fast_url")
	private String soundFast;

	@Column(name = "sound_file_slow_url")
	private String soundSlow;

	@Column(name = "aka")
	private String otherNames;

	@Column(name = "notes")
	private String notes;

	// constructors
	public Tune() {

	}

	public Tune(int id, String name, String rhythm, String key, String provenance, String soundFast, String soundSlow,
			String otherNames, String notes) {
		super();
		this.id = id;
		this.name = name;
		this.rhythm = rhythm;
		this.key = key;
		this.provenance = provenance;
		this.soundFast = soundFast;
		this.soundSlow = soundSlow;
		this.otherNames = otherNames;
		this.notes = notes;
	}


	// getters&setters
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}

	public String getRhythm() {
		return rhythm;
	}

	public void setRhythm(String rhythm) {
		this.rhythm = rhythm;
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public String getProvenance() {
		return provenance;
	}

	public void setProvenance(String provenance) {
		this.provenance = provenance;
	}

	public String getSoundFast() {
		return soundFast;
	}

	public void setSoundFast(String soundFast) {
		this.soundFast = soundFast;
	}

	public String getSoundSlow() {
		return soundSlow;
	}

	public void setSoundSlow(String soundSlow) {
		this.soundSlow = soundSlow;
	}

	public String getOtherNames() {
		return otherNames;
	}

	public void setOtherNames(String otherNames) {
		this.otherNames = otherNames;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public int getId() {
		return id;
	}

	// toString
	@Override
	public String toString() {
		return "Tune [id=" + id + ", name=" + name + ", rhythm=" + rhythm + ", key=" + key + ", provenance="
				+ provenance + ", soundFast=" + soundFast + ", soundSlow=" + soundSlow + ", otherNames=" + otherNames
				+ ", notes=" + notes + "]";
	}

}