package klu.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import klu.repository.UserRepository;

@Service
public class UserManager {
	
	@Autowired
	UserRepository UR;
	
	//SignUp
	public String signUp(User U)
	{
		try
		{
			if(UR.validateUsername(U.getUsername()) > 0)
				throw new Exception("Username not available!");
			
			UR.save(U);
			return "New user has been added";
		}catch(Exception e)
		{
			return e.getMessage();
		}
	}
	
	//LogIn
	public String login(String username, String password)
	{
		try
		{
			if(UR.validateCredentials(username, password) == 0)
				throw new Exception("401");
			
			return "200";
		}catch(Exception e)
		{
			return e.getMessage();
		}
	}
}
