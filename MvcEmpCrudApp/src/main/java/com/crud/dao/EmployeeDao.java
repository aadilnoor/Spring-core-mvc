package com.crud.dao;

import java.util.List;

import com.crud.entity.Employee;

public interface EmployeeDao {
	
	public int saveEmployee(Employee employee);
		
	public Employee getEmployeeById(int id);
	
	public List<Employee> getAllEmployees(); 
	
	public void updateEmployee(Employee employee); 
	
	public void deleteEmployee(int id);
		
	

}
