package com.hantick.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.hantick.dto.UserDto;
import com.hantick.service.UserService;

@RestController
@RequestMapping("/")
public class MainController {
	
	@GetMapping("/index")
	public String main() {
		return "index";
	}
	
	// db에서 user정보 불러오기 
	@Autowired
	UserService userService;
	
//	@GetMapping("/mentorlist")
//	public List<UserDto> mentorlist() {
//		return userService.getUserList();
//	}
	
	@GetMapping("/mentorlist")
	public ModelAndView mentorlist() {
		List<UserDto> mentorList = userService.getMentorList();
		ModelAndView mav = new ModelAndView("mentorlist");
		mav.addObject("mentorList", mentorList);
		return mav;
	}
	
}
