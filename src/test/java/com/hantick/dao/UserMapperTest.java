package com.hantick.dao;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.hantick.dto.UserDto;

public class UserMapperTest {
	
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

