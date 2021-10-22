package com.hantick.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.hantick.dto.UserDto;
import com.hantick.service.UserService;

@RestController
@RequestMapping("/api")
public class MainController {
	
	@GetMapping("/index")
	public String main() {
		return "index";
	}
	
	@GetMapping("/mentorlist")
	public String mentorlist() {
		return "mentorlist";
	}
	
	// db에서 user정보 불러오기 
	@Autowired
	UserService userService;
	
	@GetMapping("/test")
	public List<UserDto> test() {
		return userService.getUserList();
	}
}
