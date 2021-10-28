package com.hantick.dao;

import java.util.List;

import com.hantick.dto.AllUserDTO;
import com.hantick.dto.MentoringFormDTO;

public interface AllUserMapper {
	
	public List<AllUserDTO> selectAll(AllUserDTO dto);
	
	public AllUserDTO selectOne(AllUserDTO dto);
	
	/* 멘토링 신청하기 */
	void insertForm(MentoringFormDTO dto);
	
	/* 멘토의 이름, 팀, 직책, 이메일 불러오기 */
	public AllUserDTO selectMentor(AllUserDTO dto);

}
