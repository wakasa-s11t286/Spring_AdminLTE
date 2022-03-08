package com.example.todo.app.login;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
@RequestMapping("/login")
public class LoginController {

	  private static final Logger logger = LoggerFactory
	            .getLogger(LoginController.class);

	    @GetMapping("/loginForm") // (1)
	    public String view() {
	        return "login/loginForm";
	    }
	    

/**
	    @RequestMapping(value = "login", method = {RequestMethod.GET, RequestMethod.POST})
	    public String login(Locale locale, Model model) {
	        logger.info("Login top.", locale);

	        Date date = new Date();
	        DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG,
	                DateFormat.LONG, locale);

	        String formattedDate = dateFormat.format(date);

	        model.addAttribute("serverTime", formattedDate);

	        return "login/login";
	    }
	    */
}
