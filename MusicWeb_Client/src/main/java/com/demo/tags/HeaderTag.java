package com.demo.tags;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.tags.RequestContextAwareTag;

public class HeaderTag extends RequestContextAwareTag {
	@Override
	protected int doStartTagInternal() throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void doFinally() {
		try {
			String jspPage = "../tags/header/index.jsp";
			HttpServletRequest request = (HttpServletRequest) pageContext.getRequest();
			request.getRequestDispatcher(jspPage);
			pageContext.include(jspPage);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
