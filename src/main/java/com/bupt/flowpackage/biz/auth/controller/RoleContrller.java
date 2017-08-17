package com.bupt.flowpackage.biz.auth.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/adminmanage/role")
public class RoleContrller {
	private static final String PATH = "/adminmanage/role/";

	/**
	 * <p>角色列表</p>   
	 * @param @param request
	 * @param @return      
	 * @return String
	 */
	@RequestMapping("/role-list")
	public String adminPermission() {
		return PATH + "role-list";
	}
}
