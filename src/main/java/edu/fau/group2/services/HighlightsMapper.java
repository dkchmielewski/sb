package edu.fau.group2.services;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import edu.fau.group2.model.Highlights;

//This class implements the RowMapper to build a record requests

public class HighlightsMapper implements RowMapper<Highlights> {

	@Override
	public Highlights mapRow(ResultSet rs, int rowNum) throws SQLException {
		Highlights hl = new Highlights();
		hl.setId(rs.getInt(1));
		hl.setTittle(rs.getString(2));
		hl.setLink(rs.getString(3));
		return hl;
		
	}
}

