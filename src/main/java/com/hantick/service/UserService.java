package com.hantick.service;

import java.util.List;

import com.hantick.dto.UserDto;

public interface UserService {
	
	/* 사원 한명 조회하기 */
	public UserDto getUser (int id_seq);
	
	/* 전체 사원리스트 조회 */
	public List<UserDto> getUserList();
}
