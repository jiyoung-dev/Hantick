package com.hantick.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hantick.dto.AllUserDTO;
import com.hantick.dto.MentoringFormDTO;
import com.hantick.dto.MentoringListDTO;
import com.hantick.service.AllUserService;

@Controller
public class MentoringFormController {

	@Autowired
	AllUserService allUserService;
	
	@RequestMapping("allUserList")
	public String getUserList(Model model, AllUserDTO dto) {
		model.addAttribute("UserList", allUserService.getUserList(dto));
		return "mentoringForm/allUserList";
	}
	
	@GetMapping("insertBoard")
	public String inserBoard(Model model) {
		model.addAttribute("mentoringForm", new MentoringFormDTO());
		return "mentoringForm/insertBoard";
	}
	
	@PostMapping("insertBoard")
	public String insertBoard(Model model, MentoringFormDTO dto) {
		System.out.println("입력값은?" + dto);
		allUserService.insertForm(dto);
		return "redirect:/mentorlist";
	}

}
