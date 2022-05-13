package com.skilldistillery.poe.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.poe.data.PoeCharacterDAO;

@Controller
public class PoeCharacterController {

	@Autowired
	private PoeCharacterDAO poeDao;

	@RequestMapping(path = {"/", "home.do"})
	public String index(Model model) {
		model.addAttribute("DEBUG", poeDao.findById(1));
		
		return "index";
	}
}
