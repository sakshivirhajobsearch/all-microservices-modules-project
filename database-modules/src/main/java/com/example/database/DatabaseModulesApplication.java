package com.example.database;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@EntityScan(basePackages = "com.example.database.model")
@EnableJpaRepositories(basePackages = "com.example.database.repository")
@ComponentScan(basePackages = "com.example.database")
public class DatabaseModulesApplication {
	public static void main(String[] args) {
		SpringApplication.run(DatabaseModulesApplication.class, args);
	}
}
