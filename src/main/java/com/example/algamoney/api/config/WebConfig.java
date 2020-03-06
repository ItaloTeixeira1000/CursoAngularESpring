package com.example.algamoney.api.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.autoconfigure.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;
import org.springframework.jdbc.core.JdbcTemplate;

@Profile("oauth-security")
@Configuration
public class WebConfig {
 
 @Bean(name = "db")
 @ConfigurationProperties(prefix = "spring.datasource")
 public DataSource dataSource() {
  return DataSourceBuilder.create().build();
 }

 @Bean(name = "jdbcTemplate")
 public JdbcTemplate jdbcTemplate(@Qualifier("db") DataSource ds) {
  return new JdbcTemplate(ds);
 }
}
