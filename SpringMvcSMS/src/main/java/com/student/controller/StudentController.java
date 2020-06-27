package com.student.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.student.bean.Student;
import com.student.dao.StudentDao;
import com.student.service.StudentService;

@Controller
public class StudentController {
	@Autowired
	StudentService studentService;

	@RequestMapping("/studentForm")
	public String studentForm(Model model, @ModelAttribute("student") Student student) {
		model.addAttribute("Student", new Student());
		return "studentForm";
	}

	@RequestMapping("/save")
	public String save(@ModelAttribute("student") Student student) {
		studentService.addStudent(student);
		return "redirect:/viewStudents";
	}

	@RequestMapping("/dashBoard")
	public String dashBoard() {
		return "DashBoard";
	}

	@RequestMapping("/viewStudents")
	public String viewStudent(Model model) {
		List<Student> list = studentService.getAllStudents();
		model.addAttribute("list", list);
		return "viewStudents";
	}

	@RequestMapping(value = "/editStudent/{rollNo}")
	public String edit(@PathVariable int rollNo, Model model) {

		Student student = studentService.getStudentById(rollNo);
		model.addAttribute("student", student);
		return "editStudent";

	}

	@RequestMapping(value = "/student/edit/{rollNo}", method = RequestMethod.POST)
	public String editsave(@ModelAttribute("student") Student student, @PathVariable int rollNo) {
		studentService.updateStudent(student);
		return "redirect:/viewStudents";
	}

	@RequestMapping(value = "/delete/{rollNo}", method = RequestMethod.GET)
	public String delete(@PathVariable int rollNo) {
		studentService.deleteStudent(rollNo);
		return "redirect:/viewStudents";
	}
	
	
	@RequestMapping("city.htm")
	public @ResponseBody StringBuilder city(@ModelAttribute("student") Student student, 
			@RequestParam("country1") String getCountry)
	{
		String country1=getCountry;
		StringBuilder cities= studentService.getCities(country1);
		System.out.println("req: "+ country1);
		return cities;
		
	}
	
}
