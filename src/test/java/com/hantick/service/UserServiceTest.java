package com.hantick.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.hantick.dto.UserDto;

@RunWith(SpringRunner.class)
@SpringBootTest
public class UserServiceTest {
	
	@Autowired
	private UserService uService;
	
	@Test
	public void 유저정보_조회_테스트() {
		
		System.out.println(uService.getUser(1));
		System.out.println(uService.getUserList());
	}
	
	@Test
	public void 멘토리스트_조회_테스트() {
		
		System.out.println(uService.getMentorList());
	}
	
	@Test
	public void 랜덤한사원_조회_테스트() {
		
		System.out.println(uService.getRandomMentor());
		
	}
	
}
