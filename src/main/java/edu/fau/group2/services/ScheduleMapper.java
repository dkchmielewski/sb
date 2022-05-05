package edu.fau.group2.services;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import edu.fau.group2.model.Schedule;

//This class implements the RowMapper to build a record requests

public class ScheduleMapper implements RowMapper<Schedule>{
	
	@Override
	public Schedule mapRow(ResultSet rs, int rowNum) throws SQLException {
		Schedule s = new Schedule();
		s.setGameId(rs.getInt(1));
		s.setFirstTeam(rs.getString(2));
		s.setSecondTeam(rs.getString(3));
		s.setGameDate(rs.getString(4));
		s.setFirstScore(rs.getInt(5));
		s.setSecondScore(rs.getInt(6));
		s.setWinner(rs.getString(7));
		return s;
		
	}
	

}
