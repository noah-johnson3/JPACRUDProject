package com.skilldistillery.poe.controllers;

import java.util.List;

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
//		model.addAttribute("DEBUG", poeDao.findById(1));
		List<PoeCharacter> charList = poeDao.poeCharacters();
		model.addAttribute("charList", charList);

		return "index";
	}

	@RequestMapping("showClass.do")
	public String showCharacter(@RequestParam("id") int id, Model model) {
		PoeCharacter character = poeDao.findById(id);
		model.addAttribute("character", character);
		return "views/show";
	}

	@RequestMapping(path = "createCharacter.do", method = RequestMethod.POST)
	public String createCharacter(PoeCharacter character, RedirectAttributes redir) {

		character = poeDao.createCharacter(character);

		redir.addFlashAttribute("character", character);
		return "redirect:showCharacterRedirect.do";
	}

	// Finished, no touchy
	@RequestMapping(path = "create.do", method = RequestMethod.GET)
	public String createCharacterGet() {

		return "views/createCharacter";
	}

	@RequestMapping(path = "showCharacterRedirect.do")
	public String showCharacterRedirect() {

		return "views/show";
	}

	@RequestMapping(path = "list.do", method = RequestMethod.GET)
	public String showAllCharacters(Model model) {
		List<PoeCharacter> charList = poeDao.poeCharacters();
		model.addAttribute("charList", charList);

		return "views/listAll";
	}

	@RequestMapping(path = "update.do", method = RequestMethod.GET)
	public String updateCharacterRedirecet(int id, Model model) {
		PoeCharacter character = poeDao.findById(id);
		model.addAttribute("character", character);
		return "views/updateCharacter";
	}

	@RequestMapping(path = "updateCharacterDB.do", method = RequestMethod.POST)
	public String updateCharacter(PoeCharacter character, Integer id, Model model) {
		poeDao.updateCharacter(character);

		return "views/show";
	}

	@RequestMapping(path = "delete.do", method = RequestMethod.GET)
	public String deleteCharacter(int id, Model model) {
		poeDao.deleteCharacter(id);

		return "views/deleteCharacter";
	}

}
