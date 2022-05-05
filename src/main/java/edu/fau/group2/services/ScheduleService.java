package edu.fau.group2.services;

import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import edu.fau.group2.model.Schedule;

//This class extends the BaseService class to implement the abstract methods

@Component 
public class ScheduleService extends BaseService<Schedule> {
	
	@Autowired
	public ScheduleService(DataSource dataSource) {
		super(dataSource);
	}
	
	@Override
	public Schedule getById(int gameId) {
		// TODO Auto-generated method stub
	return null;
	}
	
	@Override
	public List<Schedule> getAll() {
		String sql = "select * from schedule";
	return jdbcTemplate.query(sql, new ScheduleMapper());
	}
	
	@Override
	public boolean create(Schedule t) {
		// TODO Auto-generated method stub
	return false;
	}
	
	@Override
	public boolean update(Schedule t) {
		// TODO Auto-generated method stub
	return false;
	}
	
	@Override
	public boolean delete(int gameId) {
		// TODO Auto-generated method stub
	return false;
	}
	
	@Override
	public List<Schedule> getByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

}
