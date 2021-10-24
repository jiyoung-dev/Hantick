package com.hantick.dto;

public class DepartmentDto {
	private String department_name;

	public String getDepartment_name() {
		return department_name;
	}

	public void setDepartment_name(String department_name) {
		this.department_name = department_name;
	}

	@Override
	public String toString() {
		return "DepartmentDto [department_name=" + department_name + ", getDepartment_name()=" + getDepartment_name()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}
	
}
