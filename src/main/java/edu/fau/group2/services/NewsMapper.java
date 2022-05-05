package edu.fau.group2.services;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import edu.fau.group2.model.News;

//This class implements the RowMapper to build a record requests

public class NewsMapper implements RowMapper<News> {

	@Override
	public News mapRow(ResultSet rs, int rowNum) throws SQLException {
		News nws = new News();
		nws.setNews_id(rs.getInt(1));
		nws.setTittle(rs.getString(2));
		nws.setLink(rs.getString(3));
		nws.setImage(rs.getString(4));
		return nws;
		
	}
}
