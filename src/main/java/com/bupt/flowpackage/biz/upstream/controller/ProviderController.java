package com.bupt.flowpackage.biz.upstream.controller;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bupt.flowpackage.biz.upstream.model.ProviderAddOrEditResp;
import com.bupt.flowpackage.biz.upstream.service.ProviderService;
import com.bupt.flowpackage.common.domain.BaseResponse;
import com.bupt.flowpackage.common.domain.Page;
import com.bupt.flowpackage.common.exception.ExceptionHelper;
import com.bupt.flowpackage.mybatis.account.role.model.Role;
import com.bupt.flowpackage.mybatis.trade.provider.model.Provider;

/** 
* @author wangdaojan
* @version 创建时间：2017年8月13日 下午6:10:43 
* 上游供应商
*/
@Controller
@RequestMapping("/upstream/provider")
public class ProviderController {
	public static Logger logger = LoggerFactory.getLogger(ProviderController.class);
	public static final String PATH = "/upstream/provider/";
	@Resource
	private ProviderService providerService;
	
	/**
	 * <p>供应商列表</p>   
	 * @param @return      
	 * @return String
	 */
	@RequestMapping("/provider-list")
	public String merchantList() {
		return PATH + "provider-list";
	}
	/**
	* 获取供应商list
	* @param @param req
	* @param @return
	* @return BaseResponse<Provider>
	 */
	@ResponseBody
	@RequestMapping("/api/getProviderList")
	public BaseResponse<Provider> getProviderList(Provider req) {
		BaseResponse<Provider> baseResp = new BaseResponse<Provider>();
		try{
			Page<Provider> pages = providerService.getProviderListPage(req);
			baseResp.setPages(pages);
		}catch(Exception e) {
			baseResp = ExceptionHelper.createResponse(e, req);
		}
		return baseResp;
	}
	
	/**
	* 供应商添加页面
	* @param @param modelMap
	* @param @return
	* @return String
	 */
	@RequestMapping("/provider-add")
	public String providerAdd(ModelMap modelMap) {
		try{
			ProviderAddOrEditResp resp = new ProviderAddOrEditResp();
			Provider provider = new Provider();
			resp.setProvider(provider);
			modelMap.addAttribute("resp", resp);
		}catch(Exception e) {
			logger.error("供应商添加页面访问失败!", e);
			throw e;
		}
		return PATH + "provider-form";
	} 
	
}
 