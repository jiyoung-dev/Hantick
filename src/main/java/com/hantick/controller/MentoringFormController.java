package com.hantick.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hantick.dto.AllUserDTO;
import com.hantick.dto.MentoringFormDTO;
import com.hantick.service.AllUserService;
import com.hantick.service.UserService;

@Controller
public class MentoringFormController {

	@Autowired
	AllUserService allUserService;
	
	@Autowired
	UserService userService;
	
	@Autowired
	JavaMailSender javaMailSender;
	
	@RequestMapping("allUserList")
	public String getUserList(Model model, AllUserDTO dto) {
		model.addAttribute("UserList", allUserService.getUserList(dto));
		return "mentoringForm/allUserList";
	}
	
	@GetMapping("insertBoard")
	public String inserBoard(Model model) {
		model.addAttribute("randomMentor", userService.getRandomMentor());
		return "mentoringForm/insertBoard";
	}
	
	@PostMapping("insertBoard")
	public String insertBoard(Model model, MentoringFormDTO dto, AllUserDTO adto) {
	    SimpleMailMessage message = new SimpleMailMessage();
//		HashMap map = new HashMap();
//		Integer mentorId = 0; 
		
//		if ( dto.isRand() ) {
//			mentorId = this.createRandMentor();
//		} else {
//			mentorId = dto.getMentorId();
//		}
//		mentorId = ( dto.isRand() ) ? this.createRandMentor() : dto.getMentorId();
		
//		map.set( "mentorId", mentorId );
		
		System.out.println(" ★ 입력값은~? " + dto);
		adto = allUserService.selectMentor(adto);
		
		System.out.println(" ★ 멘토는~? " + adto);
		
		System.out.println("---------------- mentorId ----------------");
		System.out.println(adto.getMentor_id_seq());
		System.out.println(adto.getId_seq());
		System.out.println("------------------------------------------");
		
		System.out.println(adto.getName());
		System.out.println(adto.getDepartment_name());
		System.out.println(adto.getPosition_name());
		System.out.println(adto.getMail());
		
		//allUserService.selectMentor(adto);
		model.addAttribute("MentorInfo", adto);
		
		allUserService.insertForm(dto);
		/*
		adto.getId_seq();
		adto.getName();
		adto.getDepartment_name();
		adto.getPosition_name();
		adto.getMail();
		*/
		
		
		message.setFrom("dooly6618@naver.com");
		message.setTo(adto.getMail());
		message.setSubject("멘토링 신청이 왔습니다. - 한틱");
		message.setText(adto.getName()+"님, 멘토링 신청이 왔습니다. 자세한 내용은 한틱을 이용해주시기 바랍니다.");
		
		javaMailSender.send(message);
		System.out.println("멘토에게 이메일을 보냈습니다.");
		
		return "mentorlist";
		/* return "redirect:/mentorlist"; */
	}
	
}
