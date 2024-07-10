package com.crud.dao;

import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.crud.entity.Employee;

@Repository
public class EmployeeDaoImpl implements EmployeeDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Transactional
	@Override
	public int saveEmployee(Employee employee) {
		int save = (Integer) hibernateTemplate.save(employee);
		return save;
	}

	@Override
	public Employee getEmployeeById(int id) {
		Employee employee = hibernateTemplate.get(Employee.class, id);
		return employee;
	}

	@Override
	public List<Employee> getAllEmployees() {
		List<Employee> all = hibernateTemplate.loadAll(Employee.class);
		return all;
	}

	@Transactional
	@Override
	public void updateEmployee(Employee employee) {
		hibernateTemplate.update(employee);
	}

	@Transactional
	@Override
	public void deleteEmployee(int id) {
		Employee employee = hibernateTemplate.get(Employee.class, id);
		hibernateTemplate.delete(employee);
	}

}
