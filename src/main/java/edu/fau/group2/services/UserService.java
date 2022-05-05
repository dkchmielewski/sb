package edu.fau.group2.services;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Component;

import edu.fau.group2.model.User;

//This class extends the BaseService class to implement the abstract methods

@Component
public class UserService extends BaseService<User>{

	@Autowired
	public UserService(DataSource dataSource) {
		super(dataSource);
	}

	@Override
	public User getById(int id) {
		String sql = "select * from user where user_id = ?";
		try {
			return jdbcTemplate.queryForObject(sql, new Object[]{id}, new UserMapper());
		} catch (EmptyResultDataAccessException ex) {
			return null;
		}
	}

	@Override
	public List<User> getByName(String name) {
		String sql = "select * from user where last_name=?";
		return jdbcTemplate.query(sql,  new Object[] {name}, new UserMapper());
	}

	@Override
	public List<User> getAll() {
		String sql = "select * from user";
		return jdbcTemplate.query(sql,  new UserMapper());
	}

	@Override
	public boolean create(User t) {
		String sql = "insert into user (first_name, last_name, email, username, password, phone, dob, gender)"
				+ "values (?,?,?,?,?,?,?,?)";
		return jdbcTemplate.update(sql, t.getFirstName(), t.getLastName(), t.getEmail(), t.getUserName(), t.getPassword(), t.getPhone(), t.getDob(), t.getGender())>0;
	}

	@Override
	public boolean update(User t) {
		String sql = "update user set first_name=?, last_name=?, email=?, username=?, password=?, phone=?, dob=?, gender=?"
				+ " WHERE user_id=?";
		return jdbcTemplate.update(sql, t.getFirstName(), t.getLastName(), 
				t.getEmail(), t.getUserName(), t.getPassword(), t.getPhone(), t.getDob(), t.getGender(), t.getUserId()) > 0;
	}

	@Override
	public boolean delete(int id) {
		String query = "DELETE FROM user WHERE user_id = ?";
		return jdbcTemplate.update(query, id) > 0;
	}

}
