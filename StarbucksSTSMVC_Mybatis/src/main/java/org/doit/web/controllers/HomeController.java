package org.doit.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class HomeController {
		
	//constructor
	public HomeController() {	
		super();
	}

	@RequestMapping("index.htm")
	public String home() throws Exception{
		//return "index.jsp";
		return "home.index";
	}

}
