package com.demo.tags;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.tags.RequestContextAwareTag;

public class AudioPlayerSectionTag extends RequestContextAwareTag {
	@Override
	protected int doStartTagInternal() throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void doFinally() {
		try {
			String jspPage = "../tags/audio_player_section/index.jsp";
			HttpServletRequest request = (HttpServletRequest) pageContext.getRequest();
			request.getRequestDispatcher(jspPage);
			pageContext.include(jspPage);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
