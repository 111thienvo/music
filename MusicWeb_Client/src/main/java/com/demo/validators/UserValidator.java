package com.demo.validators;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;


@Component
public class UserValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return UserValidator.class.equals(clazz);
		
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub		
	}
	
}
