package com.hantick.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.hantick.dto.UserDto;
import com.hantick.service.UserService;

@Controller
@RequestMapping("/")
public class MentorlistController {
	
	// db에서 user정보 불러오기 
	@Autowired
	UserService userService;
	
	@GetMapping("/mentorlist")
	public ModelAndView mentorlist() {
		List<UserDto> mentorList = userService.getMentorList();
		ModelAndView mav = new ModelAndView("mentorlist");
		mav.addObject("mentorList", mentorList);
		return mav;
	}
	
	@GetMapping("/mentoringForm")
	public ModelAndView mentoringForm() {
		UserDto randomMentor = userService.getRandomMentor();
		ModelAndView mav = new ModelAndView("mentoringForm");
		mav.addObject("data", randomMentor);
		return mav;
	}
	
	
//	@RequestMapping(value = "/getRandomMentor", method = RequestMethod.GET)
//	public String getRandomMentor(Model model) throws Exception {
//		model.addAttribute("mentoringForm", userService.getRandomMentor());
//		return "mentoringForm";
//	}
}
