package com.hantick.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hantick.dao.AllUserMapper;
import com.hantick.dto.AllUserDTO;
import com.hantick.dto.MentoringFormDTO;

@Service
public class AllUserServiceImpl implements AllUserService {
	
	@Autowired
	AllUserMapper allUserMapper;

	@Override
	public List<AllUserDTO> getUserList(AllUserDTO dto) {
		return allUserMapper.selectAll(dto);
	}

	@Override
	public AllUserDTO getUser(AllUserDTO dto) {
		return allUserMapper.selectOne(dto);
	}
	
	/* 멘토링 신청하기 */
	@Override
	public void insertForm(MentoringFormDTO dto) {
		allUserMapper.insertForm(dto);
		
	}

}
