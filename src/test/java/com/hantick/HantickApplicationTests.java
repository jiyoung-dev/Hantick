package com.hantick;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hantick.dao.UserMapper;
import com.hantick.dto.UserDto;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest
class HantickApplicationTests {

	@Autowired
	private UserMapper uMapper;
	
	@Test
	public void 유저정보_불러오기_테스트() {
		UserDto user = new UserDto();
		user.getId_seq();
		user.getName();
		user.getMail();
		user.getDepartment_seq();
		user.getPosition_seq();
		user.getPhoto();
		user.getPoint();
		
		System.out.println(uMapper.selectOneUser(1));
		System.out.println(uMapper.selectAllUser());
	}

}
