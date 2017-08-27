package com.bupt.flowpackage.test;

import java.util.Date;

import com.bupt.flowpackage.utils.StringUtil;

/** 
* @author 作者 E-mail: 
* @version 创建时间：2017年7月16日 上午10:36:23 
* 类说明 
*/
public class Test {
	public static void main(String[] args) {
		/*String uri = "/flowpackage/adminmanage/admin/admin-list.html";
		String contextPath = "/flowpackage";
		int start = contextPath.length();
		uri = uri.substring(contextPath.length());
		System.out.println(uri);
		System.out.println(StringUtil.getSubStr(uri, 2));
		int end = uri.indexOf("/", 2);
		String parentUri = uri.substring(0, end);
		System.out.println(parentUri);*/
		Person p = new Person();
		setPersonName(p);
		System.out.println(p.getName());
	}
	
	public static void setPersonName(Person p) {
		p.setName("wang");
	}
}
class Person{
	String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
}
 