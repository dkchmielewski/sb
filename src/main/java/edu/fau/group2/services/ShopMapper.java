package edu.fau.group2.services;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import edu.fau.group2.model.Shop;

//This class implements the RowMapper to build a record requests

public class ShopMapper implements RowMapper<Shop>{

	@Override
	public Shop mapRow(ResultSet rs, int rowNum) throws SQLException {
		Shop shp = new Shop();
		shp.setShop_id(rs.getInt(1));
		shp.setTeam_name(rs.getString(2));
		shp.setLogo(rs.getString(3));
		shp.setProduct(rs.getString(4));
		return shp;
		}


}

