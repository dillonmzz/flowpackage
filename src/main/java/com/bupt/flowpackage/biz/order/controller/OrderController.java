package com.bupt.flowpackage.biz.order.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/** 
* @author 作者 E-mail: 
* @version 创建时间：2017年8月13日 下午6:00:48 
* 类说明 
*/
@Controller
@RequestMapping("/order")
public class OrderController {
	
	public static final String PATH = "/order/ordermanage/";
	
	/**
	 * <p>今日订单</p>   
	 * @param @return      
	 * @return String
	 */
	@RequestMapping("/ordermanage/order-today")
	public String orderToday() {
		return PATH + "order-today";
	}
	
	/**
	 * <p>历史订单</p>   
	 * @param @return      
	 * @return String
	 */
	@RequestMapping("/ordermanage/order-history")
	public String orderHistory() {
		return PATH + "order-history";
	}
	
}
 