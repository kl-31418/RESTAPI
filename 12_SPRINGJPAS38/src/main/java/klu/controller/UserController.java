
package klu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import klu.model.User;
import klu.model.UserManager;

@RestController
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	UserManager UM;
	
	@PostMapping("/signup")
	public String signup(@RequestBody User U)
	{
		return UM.signUp(U);
	}
	
	@GetMapping("/login/{uname}/{pwd}")
	public String login(@PathVariable("uname") String un,@PathVariable("pwd") String pw)
	{
		return UM.login(un, pw);
	}
	
	@PostMapping("/login")
	public String login(@RequestBody User U)
	{
		return UM.login(U.getUsername(), U.getPassword());
	}
}
