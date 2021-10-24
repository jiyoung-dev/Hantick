package com.hantick.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hantick.dao.UserMapper;
import com.hantick.dto.UserDto;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	UserMapper uMapper;
	
	@Override
	public UserDto getUser(int id_seq) {
		return uMapper.selectOneUser(id_seq);
	}
	
	@Override
	public List<UserDto> getUserList() {
		return uMapper.selectAllUser();
	}
	
	@Override
	public List<UserDto> getMentorList() {
		return uMapper.selectAllMentor();
	}
}
