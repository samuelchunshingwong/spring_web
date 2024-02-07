package com.infotech.validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import org.springframework.beans.factory.annotation.Autowired;

import com.infotech.service.UserService;

public class EmailConstraintValidator implements ConstraintValidator<NoDuplicateEmail, String> {
	
	@Autowired
	private UserService userService;
	
	@Override
	public void initialize(NoDuplicateEmail NoDuplicateEmail) {
		// TODO Auto-generated method stub
		
	}
    
    @Override
    public boolean isValid(String email, ConstraintValidatorContext cxt) {
        if(email == null) {
            return false;
        }
        boolean checkEmail = userService.validateUserEmail(email);
        //matcher = pattern.matcher(password);
        return checkEmail;
    }

	
	
    
	
}