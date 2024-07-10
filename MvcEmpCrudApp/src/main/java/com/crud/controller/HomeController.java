package com.crud.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.crud.dao.EmployeeDao;
import com.crud.dao.UserDao;
import com.crud.entity.Employee;
import com.crud.entity.User;

@Controller
public class HomeController {

	@Autowired
	private EmployeeDao dao;

	@Autowired
	private UserDao userDao;

	@RequestMapping(path = "/home")
	public String home(Model m) {

		List<Employee> list = dao.getAllEmployees();
		m.addAttribute("employeeList", list);
		return "home";

	}

	@RequestMapping(path = "/addEmp")
	public String aadEmp() {
		return "add_emp";

	}

	@RequestMapping(path = "/createEmp", method = RequestMethod.POST)
	public String createEmp(@ModelAttribute Employee employee, HttpSession session) {
		System.out.println(employee);
		int i = dao.saveEmployee(employee);
		session.setAttribute("msg", "Employee Added Successfully");
		return "redirect:/addEmp";

	}

	// Edit Employee
	@RequestMapping(path = "/editEmp/{id}")
	public String editEmp(@PathVariable int id, Model m) {
		Employee employee = dao.getEmployeeById(id);
		m.addAttribute("employee", employee);
		return "edit_emp";

	}

	// update Employee
	@RequestMapping(path = "/updateEmp", method = RequestMethod.POST)
	public String updateEmp(@ModelAttribute Employee employee, HttpSession session) {
		dao.updateEmployee(employee);
		session.setAttribute("msg", "Employee Update Successfully");
		return "redirect:/home";
	}

	// Delete Employee
	@RequestMapping(path = "/deleteEmp/{id}")
	public String deleteEmp(@PathVariable int id, HttpSession session) {

		dao.deleteEmployee(id);
		session.setAttribute("msg", "Employee Delete Successfully");
		return "redirect:/home";
	}

	// Register page
	@RequestMapping(path = "/register")
	public String registerPage() {

		return "register";
	}

	// Login page
	@RequestMapping(path = "/login")
	public String loginPage() {

		return "login";
	}

	// Register form
	@RequestMapping(path = "/createUser", method = RequestMethod.POST)
	public String register(@ModelAttribute User user, HttpSession session) {

		System.out.println(user);
		int saveUser = userDao.saveUser(user);
		session.setAttribute("msg", "User Register Successfully");
		return "redirect:/register";

	}

	@RequestMapping(path = "/userLogin", method = RequestMethod.POST)
	public String login(@RequestParam("email") String em, @RequestParam("password") String ps, HttpSession session) {

		User user = userDao.loginUser(em, ps);
		if (user != null) {
			session.setAttribute("loginuser", user);

			return "profile";
		} else {
			session.setAttribute("msg", "Invalid email and password");
			return "redirect:/login";
		}
	}

	// User Profile
	@RequestMapping("/myProfile")
	public String myProfile() {
		return "profile";
	}

	// User Logout
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {

		HttpSession session = request.getSession();
		session.removeAttribute("loginuser");
		session.setAttribute("msg", "Logout Successfully");
		
		return "login";
	}

}
