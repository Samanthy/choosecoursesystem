package com.tarena.group3.choosecoursesystem.util;


import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
/**
 * Cookie Toolkit
 * @author soft01
 *
 */
public class CookieUtils {
	private static Logger logger = Logger.getLogger(CookieUtils.class);
	private static final int MAX_AGE = 60*60*24*7;
	/**
	 * find cookie by key
	 * @param request
	 * @param key
	 * @return
	 * @throws UnsupportedEncodingException 
	 */
	public static String findCookieValue(HttpServletRequest request,String key){
		Cookie[] cookies = request.getCookies();
		String value = null;
		if(cookies!=null){
			for(Cookie c : cookies){
				if(c.getName().equals(key)){
					try {
						value = URLDecoder.decode(c.getValue(),"utf-8");
					} catch (UnsupportedEncodingException e) {
						logger.error("URLDecoder的decode出错!",e);
					}
					break;
				}
			}
		}
		return value;
	}
	/**
	 * 往resposne中添加cookie
	 * @param response
	 * @param key
	 * @param value
	 * @throws UnsupportedEncodingException 
	 */
	public static void addCookie(HttpServletResponse response,String key,String value){
		Cookie ck = null;
		try {
			ck = new Cookie(key,URLEncoder.encode(value, "utf-8"));
			ck.setMaxAge(MAX_AGE);
			ck.setPath("/choosecoursesystem");
			response.addCookie(ck);
		} catch (UnsupportedEncodingException e) {
			logger.error("URLEncoder的encode方法出错",e);
		}

	}
	/**
	 * 删除一个指定的cookie
	 * @param response
	 * @param key
	 */
	public static void deleteCookie(HttpServletResponse response,String key){
		Cookie ck = new Cookie(key,"");
		ck.setMaxAge(0);
		ck.setPath("/choosecoursesystem");
		response.addCookie(ck);
	}
}
