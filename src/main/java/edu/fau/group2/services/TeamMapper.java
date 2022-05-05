package edu.fau.group2.services;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import edu.fau.group2.model.Team;

//This class implements the RowMapper to build a record requests

public class TeamMapper implements RowMapper<Team> {

	@Override
	public Team mapRow(ResultSet rs, int rowNum) throws SQLException {
		Team tem = new Team();
		tem.setTeam_id(rs.getInt(1));
		tem.setWin(rs.getInt(2));
		tem.setLoss(rs.getInt(3));
		tem.setVote_number(rs.getInt(4));
		return tem;
		}
	
}

