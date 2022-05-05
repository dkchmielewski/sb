package edu.fau.group2.services;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import edu.fau.group2.model.User;

//This class implements the RowMapper to build a record requests

public class UserMapper implements RowMapper<User>{

	@Override
	public User mapRow(ResultSet rs, int rowNum) throws SQLException {
		User u = new User();
		u.setUserId(rs.getInt(1));
		u.setFirstName(rs.getString(2));
		u.setLastName(rs.getString(3));
		u.setEmail(rs.getString(4));
		u.setUserName(rs.getString(5));
		u.setPassword(rs.getString(6));
		u.setPhone(rs.getString(7));
		u.setDob(rs.getDate(8));
		u.setGender(rs.getString(9));
		return u;
	}

}
