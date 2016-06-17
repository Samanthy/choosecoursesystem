package com.tarena.group3.choosecoursesystem.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * 安全验证Filter
 * @author group3
 *
 */
public class SecurityFilter implements Filter {

	public void destroy() {

	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest httpRequest = (HttpServletRequest)request;
		HttpServletResponse httpResponse = (HttpServletResponse)response;
		String requestPath = httpRequest.getServletPath();
		HttpSession session = httpRequest.getSession();
		System.out.println("requestPath"+requestPath);
		//学生模块过滤
		if(requestPath.startsWith("/FirstChooseCourse")||requestPath.startsWith("/student")){
			Object o = session.getAttribute("login_student");
			if(o==null){
				httpResponse.sendRedirect(httpRequest.getContextPath()+"/login.jsp");
			}
		}
		//教师模块过滤
		if(requestPath.startsWith("/teacher")){
			Object o = session.getAttribute("login_teacher");
			if(o==null){
				httpResponse.sendRedirect(httpRequest.getContextPath()+"/login.jsp");
			}
		}
		//管理员模块过滤
		if(requestPath.startsWith("/admin")){
			Object o = session.getAttribute("login_admin");
			System.out.println("admin validation");
			if(o==null){
				httpResponse.sendRedirect(httpRequest.getContextPath()+"/login.jsp");
			}
		}
		//首页过滤
		if(requestPath.startsWith("/main.do")){
			Object ao = session.getAttribute("login_admin");
			Object to = session.getAttribute("login_teacher");
			Object so = session.getAttribute("login_student");
			if(ao==null&&to==null&&so==null){
				httpResponse.sendRedirect(httpRequest.getContextPath()+"/login.jsp");
			}
		}
		chain.doFilter(request, response);
	}

	public void init(FilterConfig arg0) throws ServletException {

	}

}
