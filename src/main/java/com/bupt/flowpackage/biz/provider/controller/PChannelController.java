package com.bupt.flowpackage.biz.provider.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * 
* @Description: 上游通道管理
* @author wangdaojian
* @company 摩尔科技有限公司版权所有
* @date 2017年8月17日 上午10:49:33
 */
@Controller
@RequestMapping("/provider/pchannel")
public class PChannelController {
	public static final String PATH = "/provider/pchannel/";
	
	/**
	 * <p>通道列表</p>   
	 * @param @return      
	 * @return String
	 */
	@RequestMapping("/channel-list")
	public String providerChannel() {
		return PATH + "channel-list";
	}
}
