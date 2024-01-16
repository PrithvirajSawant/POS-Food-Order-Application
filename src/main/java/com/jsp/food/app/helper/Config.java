package com.jsp.food.app.helper;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan(basePackages = "com.jsp")
@EnableWebMvc
public class Config implements WebMvcConfigurer {

	@Bean
	public InternalResourceViewResolver resolver() {
		InternalResourceViewResolver resource = new InternalResourceViewResolver();
		resource.setPrefix("/");
		resource.setSuffix(".jsp");
		return resource;
	}

	@Bean
	public EntityManagerFactory m1() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("raj");
		return emf;
	}

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		// Configure resource handling for static resources
		registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
	}

}
