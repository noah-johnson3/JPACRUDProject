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
		// TODO Auto-generated method stub
		return null;
	}

}
