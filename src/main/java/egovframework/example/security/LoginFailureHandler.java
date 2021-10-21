/*package egovframework.example.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.CredentialsExpiredException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.InternalAuthenticationServiceException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.stereotype.Service;
import org.springmodules.validation.commons.MessageUtils;

import egovframework.example.Dto.BoardDto;
import egovframework.example.model.IService;

@Service
public class LoginFailureHandler implements AuthenticationFailureHandler {

	private String errormsgname;
	private String defaultFailureUrl;

	@Autowired
	private BoardDto dto;
	
	@Autowired
	private IService service;

	@Override
	public void onAuthenticationFailure(HttpServletRequest req, HttpServletResponse resp,
			AuthenticationException exception) throws IOException, ServletException {

		String username = req.getParameter(dto.getAdminid());
		String password = req.getParameter(dto.getPw());
		String errormsg = null;

		if (exception instanceof BadCredentialsException) {
			loginFailureCount(username);
			errormsg = MessageUtils.getMessage("error.BadCredentials");
		} else if (exception instanceof InternalAuthenticationServiceException) {
			errormsg = MessageUtils.getMessage("error.BadCredentials");
		} else if (exception instanceof DisabledException) {
			errormsg = MessageUtils.getMessage("error.Disaled");
		} else if (exception instanceof CredentialsExpiredException) {
			errormsg = MessageUtils.getMessage("error.CredentialsExpired");
		}

		req.setAttribute(dto.getAdminid(), username);
		req.setAttribute(dto.getPw(), password);
		req.setAttribute(errormsgname, errormsg);

		req.getRequestDispatcher(defaultFailureUrl).forward(req, resp);

	}
	
	 protected void loginFailureCount(String username) {
	        service.countFailure(username);
	        int cnt = service.checkFailureCount(username);
	        if(cnt==3) {
	        	service.disabledUsername(username);
	        }
	    }


	public String getErrormsgname() {
		return errormsgname;
	}

	public void setErrormsgname(String errormsgname) {
		this.errormsgname = errormsgname;
	}

	public String getDefaultFailureUrl() {
		return defaultFailureUrl;
	}

	public void setDefaultFailureUrl(String defaultFailureUrl) {
		this.defaultFailureUrl = defaultFailureUrl;
	}

	public BoardDto getDto() {
		return dto;
	}

	public void setDto(BoardDto dto) {
		this.dto = dto;
	}

}
*/