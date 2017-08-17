package com.bupt.flowpackage.biz.provider.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/** 
* @author wangdaojan
* @version 创建时间：2017年8月13日 下午6:10:43 
* 上游供应商
*/
@Controller
@RequestMapping("/provider/provider")
public class ProviderController {
	public static final String PATH = "/provider/provider/";
	/**
	 * <p>供应商列表</p>   
	 * @param @return      
	 * @return String
	 */
	@RequestMapping("/provider-list")
	public String merchantList() {
		return PATH + "provider-list";
	}
	
}
 