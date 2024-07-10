package com.crud.dao;

import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.crud.entity.User;

@Repository
@Transactional
public class UserDaoImpl implements UserDao {

	@Autowired
	HibernateTemplate hibernateTemplate;

	@Override
	public int saveUser(User user) {
		int save = (Integer) hibernateTemplate.save(user);
		return save;
	}

	@Override
	public User loginUser(String email, String password) {
	    String hql = "from User where email = :em and password = :ps";

	    User user = (User) hibernateTemplate.execute(session -> {
	        Query query = session.createQuery(hql);
	        query.setParameter("em", email);
	        query.setParameter("ps", password);
	        return query.uniqueResult();
	    });
	    return user;
	}


}
