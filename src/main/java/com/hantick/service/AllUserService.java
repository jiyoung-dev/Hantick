package com.hantick.service;

import java.util.List;

import com.hantick.dto.AllUserDTO;
import com.hantick.dto.MentoringFormDTO;

public interface AllUserService {
	
	public List<AllUserDTO> getUserList(AllUserDTO dto);
	
	public AllUserDTO getUser(AllUserDTO dto);
	
	/* 멘토링 신청하기 */
	void insertForm(MentoringFormDTO dto);

}
