package com.student.dao;

import java.util.Iterator;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.NativeQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.student.bean.Student;

@Repository
@Transactional
public class StudentDaoImpli implements StudentDao {
	@Autowired
	private SessionFactory sessionFactory;

	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public void addStudent(Student student) {
		getCurrentSession().save(student);
	}

	@Override
	public void updateStudent(Student student) {
		Student updateStudent = getStudentById(student.getRollNo());
		updateStudent.setName(student.getName());
		updateStudent.setPhone(student.getPhone());
		updateStudent.setEducation(student.getEducation());
		updateStudent.setEmail(student.getEmail());

		getCurrentSession().update(updateStudent);
	}

	@Override
	public void deleteStudent(int rollNo) {
		Student deleteStudent = getStudentById(rollNo);
		if (deleteStudent != null) {
			getCurrentSession().delete(deleteStudent);
		}
	}

	@Override
	public Student getStudentById(int rollNo) {

		Student student = getCurrentSession().get(Student.class, rollNo);
		return student;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Student> getAllStudents() {
		return getCurrentSession().createQuery("from Student").list();
	}

	@SuppressWarnings("deprecation")
	@Override
	public StringBuilder getCities(String country) {
		String sql = "select * from cities";
		@SuppressWarnings("rawtypes")
		NativeQuery createSQLQuery = getCurrentSession().createSQLQuery(sql);
		
		StringBuilder stringBuilder= new StringBuilder();
		Iterator iterator=createSQLQuery.list().iterator();
		
		while (iterator.hasNext()) 
		{
			Object[] object = (Object[]) iterator.next();
			stringBuilder.append(object[1]);
			stringBuilder.append("!");
		}
		System.out.println("city: "+stringBuilder );
		return stringBuilder;
	}

	
}
