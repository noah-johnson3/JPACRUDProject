package com.skilldistillery.poe.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "path_of_exile_character")
public class PoeCharacter {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "name")
	private String name;

	@Column(name = "character_class")
	private String characterClass;

	@Column(name = "helmet")
	private String helmet;

	@Column(name = "weapon")
	private String weapon;

	@Column(name = "body_armor")
	private String bodyArmor;

	@Column(name = "boots")
	private String boots;

	@Column(name = "gloves")
	private String gloves;

	@Column(name = "belt")
	private String belt;

	public PoeCharacter() {
		super();
	}

	public PoeCharacter(int id, String characterClass, String helmet, String weapon, String bodyArmor, String boots,
			String gloves, String belt) {
		super();
		this.id = id;
		this.characterClass = characterClass;
		this.helmet = helmet;
		this.weapon = weapon;
		this.bodyArmor = bodyArmor;
		this.boots = boots;
		this.gloves = gloves;
		this.belt = belt;
	}

	public PoeCharacter(String name, String characterClass, String helmet, String weapon, String bodyArmor,
			String boots, String gloves, String belt) {
		super();
		this.name = name;
		this.characterClass = characterClass;
		this.helmet = helmet;
		this.weapon = weapon;
		this.bodyArmor = bodyArmor;
		this.boots = boots;
		this.gloves = gloves;
		this.belt = belt;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCharacterClass() {
		return characterClass;
	}

	public void setCharacterClass(String characterClass) {
		this.characterClass = characterClass;
	}

	public String getHelmet() {
		return helmet;
	}

	public void setHelmet(String helmet) {
		this.helmet = helmet;
	}

	public String getWeapon() {
		return weapon;
	}

	public void setWeapon(String weapon) {
		this.weapon = weapon;
	}

	public String getBodyArmor() {
		return bodyArmor;
	}

	public void setBodyArmor(String bodyArmor) {
		this.bodyArmor = bodyArmor;
	}

	public String getBoots() {
		return boots;
	}

	public void setBoots(String boots) {
		this.boots = boots;
	}

	public String getGloves() {
		return gloves;
	}

	public void setGloves(String gloves) {
		this.gloves = gloves;
	}

	public String getBelt() {
		return belt;
	}

	public void setBelt(String belt) {
		this.belt = belt;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("PoeCharacter [id=").append(id).append(", characterClass=").append(characterClass)
				.append(", helmet=").append(helmet).append(", weapon=").append(weapon).append(", bodyArmor=")
				.append(bodyArmor).append(", boots=").append(boots).append(", gloves=").append(gloves).append(", belt=")
				.append(belt).append("]");
		return builder.toString();
	}

}
