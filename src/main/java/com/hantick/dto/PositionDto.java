package com.hantick.dto;

public class PositionDto {
	private String position_name;

	public String getPosition_name() {
		return position_name;
	}

	public void setPosition_name(String position_name) {
		this.position_name = position_name;
	}

	@Override
	public String toString() {
		return "PositionDto [position_name=" + position_name + ", getPosition_name()=" + getPosition_name()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}
	
}
