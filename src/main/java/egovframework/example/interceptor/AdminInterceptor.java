package egovframework.example.interceptor;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


public class AdminInterceptor extends HandlerInterceptorAdapter{
	
	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse resp, Object handler)
			throws Exception {
		
		HttpSession session= req.getSession();
		String adminid = (String) session.getAttribute("adminid");
		
		if(adminid == null){
			resp.setContentType("text/html; charset=UTF-8");
			PrintWriter out = resp.getWriter();
			out.println("<script>alert('권한이 없습니다.');</script>");
			out.flush();
			
			System.out.println("admin이 null");
			return false;
		}
		return true;
	}

}
