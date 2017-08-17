package com.bupt.flowpackage.biz.customer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/** 
* @author wangdaojian
* @version 创建时间：2017年8月13日 下午6:14:15 
* 下游客户管理
*/
@Controller
@RequestMapping("/customer")
public class CustomerController {
	public static final String PATH = "/customer/customer/";
	
	/**
	 * <p>客户列表</p>   
	 * @param @return      
	 * @return String
	 */
	@RequestMapping("/customer/customer-list")
	public String merchantList() {
		return PATH + "customer-list";
	}
}
 