package com.skilldistillery.poe.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class PoeCharacterTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private PoeCharacter poeCharacter;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAPoeCharacterBuilder");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		poeCharacter = em.find(PoeCharacter.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		poeCharacter = null;
	}

	@Test
	@DisplayName("testing poe character mappings")
	void test() {
		assertNotNull(poeCharacter);
		assertEquals("Necromancer", poeCharacter.getCharacterClass());
		assertEquals("The Baron", poeCharacter.getHelmet());
		assertEquals("Lifesprig", poeCharacter.getWeapon());
		assertEquals("Kaom's Heart", poeCharacter.getBodyArmor());
		assertEquals("Seven-league step", poeCharacter.getBoots());
	}

}
