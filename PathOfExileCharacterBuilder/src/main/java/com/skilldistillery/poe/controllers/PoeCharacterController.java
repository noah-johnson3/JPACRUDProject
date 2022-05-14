package com.skilldistillery.poe.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.poe.data.PoeCharacterDAO;
import com.skilldistillery.poe.entities.PoeCharacter;

@Controller
public class PoeCharacterController {

	@Autowired
	private PoeCharacterDAO poeDao;

	@RequestMapping(path = { "/", "home.do" })
	public String index(Model model) {
		model.addAttribute("DEBUG", poeDao.findById(1));

		return "index";
	}

	@RequestMapping("showClass.do")
	public String showCharacter(@RequestParam Integer characterId, Model model) {
		PoeCharacter character = poeDao.findById(characterId);
		model.addAttribute("character", character);
		return "views/show";
	}

	@RequestMapping(path = "createCharacter.do", method = RequestMethod.POST)
	public String createCharacter(String name, String characterClass, String helmet, String weapon, String bodyArmor,
			String boots, String gloves, String belt, RedirectAttributes redir) {

		PoeCharacter character = new PoeCharacter(name, characterClass, helmet, weapon, bodyArmor, boots, gloves, belt);

		character = poeDao.createCharacter(character);

		redir.addFlashAttribute("character", character);
		return "redirect:showClass.do";
	}

	@RequestMapping(path = "createCharacter.do", method = RequestMethod.GET)
	public String createCharacterGet() {

		return "views/createCharacter";
	}
}
