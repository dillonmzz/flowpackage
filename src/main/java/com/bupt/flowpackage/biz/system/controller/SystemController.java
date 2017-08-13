package com.bupt.flowpackage.biz.system.controller;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bupt.flowpackage.biz.system.model.CityResp;
import com.bupt.flowpackage.biz.system.model.ProvinceResp;
import com.bupt.flowpackage.biz.system.service.SystemService;
import com.bupt.flowpackage.common.domain.BaseResponse;
import com.bupt.flowpackage.common.exception.ExceptionHelper;
/**
* @Description:系统模块
* @author wangdaojian
* @company 摩尔科技有限公司版权所有
* @date 2017年6月23日 下午3:19:56
 */
@Controller
@RequestMapping("/system")
public class SystemController {
	public static Logger logger = LoggerFactory.getLogger(SystemController.class);
	
	@Resource
	private SystemService systemService;
	
	/**
	 * <p>系统日志</p>   
	 * @param @param request
	 * @param @return      
	 * @return String
	 */
	@RequestMapping("/system-log")
	public String adminPermission() {
		return "system/system-log";
	}
	
	/**
	* @Description 基础产品组
	* @param @return
	* @return String
	 */
	@RequestMapping("/product-group")
	public String productGroup() {
		return "system/product-group";
	}
	
	/**
	 * <p>获取省份</p>   
	 * @param @return      
	 * @return String
	 */
	@ResponseBody
	@RequestMapping("/api/provinces")
	public BaseResponse<ProvinceResp> provinces() {
		BaseResponse<ProvinceResp> baseResp = new BaseResponse<ProvinceResp>();
		try{
			ProvinceResp provinceResp = systemService.getAllProvinces();
			baseResp.setData(provinceResp);
		}catch(Exception e) {
			baseResp = ExceptionHelper.createResponse(e);
		}
		return baseResp;
	}
	
	/**
	 * <p>获取省份下的城市</p>   
	 * @param @param provinceCode
	 * @param @return      
	 * @return BaseResponse<CityResp>
	 */
	@ResponseBody
	@RequestMapping("/api/getcity")
	public BaseResponse<CityResp> getcity(@RequestParam(required=true)String provinceCode) {
		BaseResponse<CityResp> baseResp = new BaseResponse<CityResp>();
		try{
			CityResp cityResp = systemService.getCitiesByProvinceCode(provinceCode);
			baseResp.setData(cityResp);
		}catch(Exception e) {
			baseResp = ExceptionHelper.createResponse(e);
		}
		return baseResp;
	}
	
}
