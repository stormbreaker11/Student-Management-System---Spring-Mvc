package com.student.service;

import java.io.StringBufferInputStream;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.student.bean.Student;
import com.student.dao.StudentDao;

@Service
public class StudentServiceImpli implements StudentService{

	@Autowired
	StudentDao studentDao;
	
	@Override
	public void addStudent(Student student) 
	{
		studentDao.addStudent(student);
	}

	@Override
	public void updateStudent(Student student) 
	{
		studentDao.updateStudent(student);
	}

	@Override
	public void deleteStudent(int rollNo) {
		studentDao.deleteStudent(rollNo);
	}

	@Override
	public Student getStudentById(int rollNo) 
	{
		return studentDao.getStudentById(rollNo);
	}

	@Override
	public List<Student> getAllStudents() {
		return studentDao.getAllStudents();
	}

	@Override
	public StringBuilder getCities(String country) {
		
		return studentDao.getCities(country);
	}

}
