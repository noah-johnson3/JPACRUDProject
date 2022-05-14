package com.skilldistillery.poe.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.poe.entities.PoeCharacter;

@Service
@Transactional
public class PoeCharacterDAOImpl implements PoeCharacterDAO {
	
	@PersistenceContext
	private EntityManager em;
	@Override
	public PoeCharacter findById(int id) {
		return em.find(PoeCharacter.class, id);
	}
	
	

	@Override
	public List<PoeCharacter> poeCharacters() {
		
		String jpql = "SELECT char FROM PoeCharacter char";
		
		return em.createQuery(jpql, PoeCharacter.class).getResultList();
	}
	
	@Override
	public PoeCharacter createCharacter(PoeCharacter character) {
		em.persist(character);
		
		return character;
	}
	@Override
	public PoeCharacter updateCharacter(PoeCharacter character) {
		PoeCharacter managedCharacter = em.find(PoeCharacter.class, character.getId());
		managedCharacter.setName(character.getName());
		managedCharacter.setBelt(character.getBelt());
		managedCharacter.setCharacterClass(character.getCharacterClass());
		managedCharacter.setHelmet(character.getHelmet());
		managedCharacter.setWeapon(character.getWeapon());
		managedCharacter.setBodyArmor(character.getBodyArmor());
		managedCharacter.setBoots(character.getBoots());
		managedCharacter.setGloves(character.getGloves());
		managedCharacter.setBelt(character.getBelt());
		
		return managedCharacter;
	}
}
