package com.offersmodule;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@EntityScan(basePackages={"com.offersmodule", "com.offersmodule.controller","com.offersmodule.model","com.offersmodule.service"})
@EnableJpaRepositories(basePackages = {"com.offersmodule.repository"})
public class OffersmoduleApplication {

	public static void main(String[] args) {
		SpringApplication.run(OffersmoduleApplication.class, args);
	}

}
