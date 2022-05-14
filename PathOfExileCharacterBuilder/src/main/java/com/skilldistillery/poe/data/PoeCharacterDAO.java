package com.skilldistillery.poe.data;

import java.util.List;

import com.skilldistillery.poe.entities.PoeCharacter;

public interface PoeCharacterDAO {
	
	PoeCharacter findById(int id);
	List<PoeCharacter> poeCharacters();
	PoeCharacter createCharacter(PoeCharacter character);
	PoeCharacter updateCharacter(PoeCharacter character);	

}
