package edu.fau.group2.services;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import edu.fau.group2.model.Team;

//This class extends the BaseService class to implement the abstract methods

@Component
public class TeamService extends BaseService<Team> {

	@Autowired
	public TeamService(DataSource dataSource) {
		super(dataSource);
		// TODO Auto-generated constructor stub
	}

	@Override
	public Team getById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Team> getByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Team> getAll() {
		String sql = "SELECT * FROM team;";
		return jdbcTemplate.query(sql, new TeamMapper());
	}

	@Override
	public boolean create(Team t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(Team t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return false;
	}

}
