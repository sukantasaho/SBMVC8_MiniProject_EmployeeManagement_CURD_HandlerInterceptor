package com.main.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.main.interceptor.TimeCheckingHandlerInterceptor;

@Component
public class MVCApplConfigurer implements WebMvcConfigurer {

	@Autowired
	private TimeCheckingHandlerInterceptor interceptor;
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		 //registry the interceptor
		registry.addInterceptor(interceptor);
		
	}
}
