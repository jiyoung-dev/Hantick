package com.hantick.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hantick.dto.UserDto;

@Controller
@RequestMapping("/")
public class IndexController {
	
	@GetMapping("/index")
	public ModelAndView index() throws Exception {
       ModelAndView mav = new ModelAndView();
       mav.setViewName("index");
       return mav;
    }
	
	@GetMapping("/mypage")
	public ModelAndView mypage() {
		ModelAndView mav = new ModelAndView();
	    mav.setViewName("mypage");
		return mav;
	}
	
	@GetMapping("/review")
	public ModelAndView review() {
		ModelAndView mav = new ModelAndView();
	    mav.setViewName("review");
		return mav;
	}

}
