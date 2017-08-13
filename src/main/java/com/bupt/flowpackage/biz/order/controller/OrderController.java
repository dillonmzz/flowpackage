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
	/**
	 * <p>今日订单</p>   
	 * @param @return      
	 * @return String
	 */
	@RequestMapping("/order-today")
	public String orderToday() {
		return "order/order-today";
	}
	
	/**
	 * <p>今日订单</p>   
	 * @param @return      
	 * @return String
	 */
	@RequestMapping("/order-history")
	public String orderHistory() {
		return "order/order-history";
	}
	
}
 