package com.hantick.dto;

public class UserDto {
	private int id_seq;
	private String name;
	private String mail;
	private int department_seq;
	private int position_seq;
	private String photo;
	private int point;
	
	private String position_name;
	private String department_name;
	
	public int getId_seq() {
		return id_seq;
	}
	public void setId_seq(int id_seq) {
		this.id_seq = id_seq;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public int getDepartment_seq() {
		return department_seq;
	}
	public void setDepartment_seq(int department_seq) {
		this.department_seq = department_seq;
	}
	public int getPosition_seq() {
		return position_seq;
	}
	public void setPosition_seq(int position_seq) {
		this.position_seq = position_seq;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	
	@Override
	public String toString() {
		return "UserDto [id_seq=" + id_seq + ", name=" + name + ", mail=" + mail + ", department_seq=" + department_seq
				+ ", position_seq=" + position_seq + ", photo=" + photo + ", point=" + point + "]";
	}
	
	public String getPosition_name() {
		return position_name;
	}
	public void setPosition_name(String position_name) {
		this.position_name = position_name;
	}
	public String getDepartment_name() {
		return department_name;
	}
	public void setDepartment_name(String department_name) {
		this.department_name = department_name;
	}
	
}
