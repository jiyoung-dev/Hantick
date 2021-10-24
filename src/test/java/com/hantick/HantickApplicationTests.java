package com.hantick;

import org.junit.Test;
import org.junit.jupiter.api.DisplayName;
import org.mockito.Mock;

import com.hantick.dao.UserMapper;
import com.hantick.dto.UserDto;

class HantickApplicationTests {

	@Mock
	UserMapper uMapper;
	
	@Test
	@DisplayName("유저정보 상세조회")
	public void detail() {
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
