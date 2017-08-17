package com.bupt.flowpackage.biz.error.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bupt.flowpackage.common.constants.Constants;

@Controller
@RequestMapping("/error")
public class ErrorContrller {

	
	@RequestMapping("/noauth")
	public String noauth() {
		return Constants.PAGE_NOAUTH;
	}
}
