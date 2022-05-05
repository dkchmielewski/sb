package edu.fau.group2.services;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Component;

import edu.fau.group2.model.Shop;

//This class extends the BaseService class to implement the abstract methods

@Component
public class ShopService extends BaseService<Shop> {

	@Autowired
	public ShopService(DataSource dataSource) {
		super(dataSource);
		// TODO Auto-generated constructor stub
	}

	@Override
	public Shop getById(int id) {
		String sql = "select * from shop where shop_id = ?";
		try {
			return jdbcTemplate.queryForObject(sql, new Object[]{id}, new ShopMapper());
		} catch (EmptyResultDataAccessException ex) {
			return null;
		}
	}

	@Override
	public List<Shop> getByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Shop> getAll() {
		String sql = "SELECT * FROM shop;";
		return jdbcTemplate.query(sql, new ShopMapper());
	}

	@Override
	public boolean create(Shop t) {
		String sql = "insert into shop (team_name, logo, product)"
				+ "values (?,?,?)";
		return jdbcTemplate.update(sql, t.getTeam_name(), t.getLogo(), t.getProduct())>0;
	}

	@Override
	public boolean update(Shop t) {
		String sql = "update shop set team_name=?, logo=?, product=? WHERE shop_id=?";
		return jdbcTemplate.update(sql, t.getTeam_name(), t.getLogo(), t.getProduct(), t.getShop_id()) > 0;
	}

	@Override
	public boolean delete(int id) {
		String query = "DELETE FROM shop WHERE shop_id = ?";
		return jdbcTemplate.update(query, id) > 0;
	}

}

