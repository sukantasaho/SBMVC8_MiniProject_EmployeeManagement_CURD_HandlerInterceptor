package com.main.interceptor;

import java.time.LocalDateTime;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Component
public class TimeCheckingHandlerInterceptor implements HandlerInterceptor 
{
       @Override
    public boolean preHandle(HttpServletRequest req, HttpServletResponse res, Object handler)
    		throws Exception {
    	 //get system and time
    	   LocalDateTime ldt = LocalDateTime.now();
    	  int hour = ldt.getHour();
    	  if(hour>=9 && hour<=17)
    	  {
    		  return true;
    	  }
    	  else
    	  {
    		  if(req.getServletPath().equals("/"))
    		  {
    			  return true;
    		  }
    		  RequestDispatcher rd = req.getRequestDispatcher("/timeout.jsp");
    		  rd.forward(req, res);
    		  return false;
    	  }
    }
}
