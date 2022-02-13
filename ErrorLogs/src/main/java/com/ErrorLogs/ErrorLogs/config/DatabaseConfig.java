package com.ErrorLogs.ErrorLogs.config;

import java.util.Properties;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

@Configuration
public class DatabaseConfig {

	@Bean
	public DriverManagerDataSource getdataSource() {
		DriverManagerDataSource ds = new DriverManagerDataSource();
		ds.setDriverClassName("com.mysql.cj.jdbc.Driver");
		ds.setUrl("jdbc:mysql://localhost:3306/errorlogs");
		Properties prop = new Properties();
		prop.put("hibernate.dialect", "org.hibernate.dialect.MySQLDialect");
		prop.setProperty("hibernate.hbm2ddl.auto", "update");
		ds.setConnectionProperties(prop);
		ds.setUsername("root");
		ds.setPassword("1234");

		return ds;
	}
	
	

}
