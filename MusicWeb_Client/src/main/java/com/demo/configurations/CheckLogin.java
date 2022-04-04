package com.demo.configurations;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class CheckLogin {
     
    public static boolean checkLogin(Object object) {
    	if(object != null) {
    		return true;
    	}
        return false;
    }
}
