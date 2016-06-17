package com.tarena.group3.choosecoursesystem.util;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 工具类
 * 
 * @author group3
 *
 */

public class ToolUtils {
	
	//日期格式
	private static final String DATE_FORMAT = "yyyy-MM-dd";
	
	//日期格式转化类
	private static DateFormat df = new SimpleDateFormat(DATE_FORMAT);
	
	//格式化日期
	public static String formatDate(Date date){
		return df.format(date);
	}
}
