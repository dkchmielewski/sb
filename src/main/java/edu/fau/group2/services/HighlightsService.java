package edu.fau.group2.services;

import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import edu.fau.group2.model.Highlights;

//This class extends the BaseService class to implement the abstract methods

@Component 
public class HighlightsService extends BaseService<Highlights> {

@Autowired
public HighlightsService(DataSource dataSource) {
	super(dataSource);
}
@Override
public Highlights getById(int id) {
	// TODO Auto-generated method stub
	return null;
}

@Override
public List<Highlights> getByName(String name) {
	// TODO Auto-generated method stub
	return null;
}

@Override
public List<Highlights> getAll() {
	String sql = "SELECT * FROM Highlights;";
	return jdbcTemplate.query(sql, new HighlightsMapper());
}

@Override
public boolean create(Highlights t) {
	// TODO Auto-generated method stub
	return false;
}

@Override
public boolean update(Highlights t) {
	// TODO Auto-generated method stub
	return false;
}

@Override
public boolean delete(int id) {
	// TODO Auto-generated method stub
	return false;
}
}

