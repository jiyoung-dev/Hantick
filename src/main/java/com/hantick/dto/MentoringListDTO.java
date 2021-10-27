package com.hantick.dto;

import java.sql.Timestamp;

public class MentoringListDTO {
	private int mentoring_id_seq;
	private int mentee_id_seq;
	private int mentor_id_seq;
	private String subject;
	private String way;
	private String content;
	private int review_flag;
	private int status;
	private Timestamp regdate;

	public int getMentoring_id_seq() {
		return mentoring_id_seq;
	}

	public void setMentoring_id_seq(int mentoring_id_seq) {
		this.mentoring_id_seq = mentoring_id_seq;
	}

	public int getMentee_id_seq() {
		return mentee_id_seq;
	}

	public void setMentee_id_seq(int mentee_id_seq) {
		this.mentee_id_seq = mentee_id_seq;
	}

	public int getMentor_id_seq() {
		return mentor_id_seq;
	}

	public void setMentor_id_seq(int mentor_id_seq) {
		this.mentor_id_seq = mentor_id_seq;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getWay() {
		return way;
	}

	public void setWay(String way) {
		this.way = way;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getReview_flag() {
		return review_flag;
	}

	public void setReview_flag(int review_flag) {
		this.review_flag = review_flag;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "MentoringListDTO [mentoring_id_seq=" + mentoring_id_seq + ", mentee_id_seq=" + mentee_id_seq
				+ ", mentor_id_seq=" + mentor_id_seq + ", subject=" + subject + ", way=" + way + ", content=" + content
				+ ", review_flag=" + review_flag + ", status=" + status + ", regdate=" + regdate + "]";
	}

}
