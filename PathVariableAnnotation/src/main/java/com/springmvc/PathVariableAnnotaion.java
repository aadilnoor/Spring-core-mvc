package com.springmvc;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PathVariableAnnotaion {
	

	@RequestMapping("/user/{userId}/{userName}")
	public String PathVariable(@PathVariable("userId") int userId, @PathVariable("userName") String userName) {
	
		System.out.println(userId);
		System.out.println(userName);
		return "home";
		
	}
}
