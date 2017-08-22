package com.bupt.flowpackage.biz.system.controller;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bupt.flowpackage.biz.system.model.ProductGroupAddReq;
import com.bupt.flowpackage.biz.system.model.ProductGroupReq;
import com.bupt.flowpackage.biz.system.service.ProductGroupService;
import com.bupt.flowpackage.common.domain.BaseResponse;
import com.bupt.flowpackage.common.domain.Page;
import com.bupt.flowpackage.common.exception.ExceptionHelper;
import com.bupt.flowpackage.mybatis.trade.productgroup.model.ProductGroup;

@Controller
@RequestMapping("/system/productgroup")
public class ProductGroupController {
	public static Logger logger = LoggerFactory.getLogger(ProductGroupController.class);
	
	public static final String PATH = "/system/productgroup/";

	@Resource
	private ProductGroupService productGroupService;
	/**
	* @Description 基础产品组
	* @param @return
	* @return String
	 */
	@RequestMapping("/pgroup-list")
	public String productGroup() {
		return PATH + "pgroup-list";
	}
	
	@RequestMapping("/pgroup-add")
	public String chanelGroupAdd() {
		return PATH + "pgroup-form";
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
			Page<ProductGroup> pages = productGroupService.getProductGroupPage(req);
			baseResp.setPages(pages);
		}catch(Exception e) {
			baseResp = ExceptionHelper.createResponse(e);
		}
		return baseResp;
	}
	
	@ResponseBody
	@RequestMapping("/api/pgroup-update")
	public BaseResponse<String> pgroupUpdate(ProductGroupAddReq req) {
		BaseResponse<String> baseResp = new BaseResponse<String>();
		try{
			productGroupService.productGroupAdd(req);
			baseResp.setMsg("产品组添加成功!");
		}catch(Exception e) {
			baseResp = ExceptionHelper.createResponse(e);
		}
		return baseResp;
	}
	
	@ResponseBody
	@RequestMapping("/pgroup-delete")
	public BaseResponse<String> pgroupDelete(@RequestParam(required=true)Integer id) {
		BaseResponse<String> baseResp = new BaseResponse<String>();
		try{
			productGroupService.productGroupDelete(id);
			baseResp.setMsg("产品组删除成功!");
		}catch(Exception e) {
			baseResp = ExceptionHelper.createResponse(e);
		}
		return baseResp;
	}
	
	@RequestMapping("/pgroup-addproduct")
	public String addProduct(@RequestParam(required=true)Integer id, ModelMap modelMap) {
		/*AdminAddOrEditResp resp = new AdminAddOrEditResp();
		try{
			List<Role> roleList = adminRoleService.getRoleList();
			resp.setRoleList(roleList);
			AdminRole adminRole = adminRoleService.getAdminRoleByKey(id);
			if(adminRole != null) {
				resp.setAdmin(adminRole);
			}
			modelMap.addAttribute("resp", resp);
		}catch(Exception e) {
			logger.error("产品组添加产品页面访问失败!", e);
			throw e;
		}*/
		return PATH + "pgroup-addproduct";
	} 
}
