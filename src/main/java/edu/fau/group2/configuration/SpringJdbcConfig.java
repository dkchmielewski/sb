package edu.fau.group2.configuration;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

//This class establishes the connection to the mysql database using jdbc driver

@Configuration
@ComponentScan("edu.fau.group2")
public class SpringJdbcConfig {

	String DATABASE_URL = "jdbc:mysql://66.228.61.104:3306/DBSPRING22G2";
	String DATABASE_USERNAME = "group2spring22db";
	String DATABASE_PASSWORD = "group2spring2022";
	
	@Bean
	public DataSource mysqlDataSource () {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("com.mysql.jdbc.Driver");
		dataSource.setUrl(DATABASE_URL);
		dataSource.setUsername(DATABASE_USERNAME);
		dataSource.setPassword(DATABASE_PASSWORD);
		return dataSource;
	}
	
}
