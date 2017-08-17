package com.bupt.flowpackage.biz.system.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bupt.flowpackage.biz.system.model.ProductGroupReq;
import com.bupt.flowpackage.biz.system.service.SystemService;
import com.bupt.flowpackage.common.domain.BaseResponse;
import com.bupt.flowpackage.common.domain.Page;
import com.bupt.flowpackage.common.exception.ExceptionHelper;
import com.bupt.flowpackage.mybatis.trade.productgroup.model.ProductGroup;

@Controller
@RequestMapping("/system/productgroup")
public class ProductGroupController {
	
	public static final String PATH = "/system/productgroup/";

	@Resource
	private SystemService systemService;
	/**
	* @Description 基础产品组
	* @param @return
	* @return String
	 */
	@RequestMapping("/p-grouplist")
	public String productGroup() {
		return PATH + "p-grouplist";
	}
	
	/**
	* @Description 获取基础产品组列表
	* @param @return
	* @return BaseResponse<ProvinceResp>
	 */
	@ResponseBody
	@RequestMapping("/api/getProductGroup")
	public BaseResponse<ProductGroup> getProductGroup(ProductGroupReq req) {
		BaseResponse<ProductGroup> baseResp = new BaseResponse<ProductGroup>();
		try{
			Page<ProductGroup> pages = systemService.getProductGroupPage(req);
			baseResp.setPages(pages);
		}catch(Exception e) {
			baseResp = ExceptionHelper.createResponse(e);
		}
		return baseResp;
	}
}
