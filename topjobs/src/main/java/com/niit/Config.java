package com.niit;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.orm.jpa.LocalEntityManagerFactoryBean;

@EnableJpaRepositories
@Configuration
public class Config {
	
	@Bean
	public LocalEntityManagerFactoryBean entityManagerFactory(){
	     LocalEntityManagerFactoryBean factoryBean = new LocalEntityManagerFactoryBean();
	    factoryBean.setPersistenceUnitName("topjobs");
	    return factoryBean;
	}

}
