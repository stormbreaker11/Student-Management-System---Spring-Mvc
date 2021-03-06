package com.student.service;

import java.util.List;

import com.student.bean.Student;

public interface StudentService {
public void addStudent(Student student);
	
	public void updateStudent(Student student);
	
	public void deleteStudent(int rollNo);
	
	public Student getStudentById(int rollNo);
	
	public List<Student> getAllStudents();
	
	public StringBuilder getCities(String country);
	
}
