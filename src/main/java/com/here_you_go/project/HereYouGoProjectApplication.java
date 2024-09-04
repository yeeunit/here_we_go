package com.here_you_go.project;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"com.here_you_go.project"})
@MapperScan(basePackages = {"com.here_you_go.project"})
public class HereYouGoProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(HereYouGoProjectApplication.class, args);
	}

}
