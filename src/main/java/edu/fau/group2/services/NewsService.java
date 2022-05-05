package edu.fau.group2.services;

import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import edu.fau.group2.model.News;

//This class extends the BaseService class to implement the abstract methods

@Component 
public class NewsService extends BaseService<News> {

@Autowired
public NewsService(DataSource dataSource) {
	super(dataSource);
}

@Override
public News getById(int id) {
	// TODO Auto-generated method stub
	return null;
}

@Override
public List<News> getByName(String name) {
	// TODO Auto-generated method stub
	return null;
}

@Override
public List<News> getAll() {
	String sql = "SELECT * FROM news;";
	return jdbcTemplate.query(sql, new NewsMapper());
}

@Override
public boolean create(News t) {
	// TODO Auto-generated method stub
	return false;
}

@Override
public boolean update(News t) {
	// TODO Auto-generated method stub
	return false;
}

@Override
public boolean delete(int id) {
	// TODO Auto-generated method stub
	return false;
}
}

