package com.validator;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.bean.Users;

@Component
public class UsersValidator implements Validator{

	@Override
	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return Users.class.isAssignableFrom(arg0);
	}
	@Override
	public void validate(Object arg0, Errors arg1) {
		// TODO Auto-generated method stub
		ValidationUtils.rejectIfEmpty(arg1, "uname", "uname.required");
		ValidationUtils.rejectIfEmpty(arg1, "upass", "upass.required");
		ValidationUtils.rejectIfEmpty(arg1, "usercate", "usercate.required");
		ValidationUtils.rejectIfEmpty(arg1, "telephone", "telephone.required");
	}

}
