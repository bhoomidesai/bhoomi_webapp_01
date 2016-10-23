package one.project.bhoomi_webapp_01.controller;

import org.hibernate.usertype.UserType;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class FormValidatrorController implements Validator {

	    public boolean supports(Class ProductModel) {
	        return UserType.class.isAssignableFrom(ProductModel);
	    }
	    @Override
	    public void validate(Object obj, Errors errors) {
	        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "desc", "Field is required.");
	        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "price", "Supplier", "Field is required.");
	    }
}
