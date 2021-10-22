package com.hantick.dao;

import java.util.List;

import com.hantick.dto.UserDto;

public interface UserMapper {

	public UserDto selectOneUser (int id_seq);
	public List<UserDto> selectAllUser();
	
}
