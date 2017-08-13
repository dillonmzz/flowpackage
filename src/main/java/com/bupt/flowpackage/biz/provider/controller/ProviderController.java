package com.bupt.flowpackage.biz.provider.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/** 
* @author wangdaojan
* @version 创建时间：2017年8月13日 下午6:10:43 
* 上游供应商
*/
@Controller
@RequestMapping("/provider")
public class ProviderController {

	/**
	 * <p>供应商列表</p>   
	 * @param @return      
	 * @return String
	 */
	@RequestMapping("/provider-list")
	public String merchantList() {
		return "provider/provider-list";
	}
	
	
	/**
	 * <p>通道管理</p>   
	 * @param @return      
	 * @return String
	 */
	@RequestMapping("/provider-channel")
	public String providerChannel() {
		return "provider/provider-channel";
	}
}
 