package com.bupt.flowpackage.biz.system.service;

import com.bupt.flowpackage.biz.system.model.CityResp;
import com.bupt.flowpackage.biz.system.model.ProductGroupReq;
import com.bupt.flowpackage.biz.system.model.ProvinceResp;
import com.bupt.flowpackage.common.domain.Page;
import com.bupt.flowpackage.mybatis.trade.productgroup.model.ProductGroup;

public interface SystemService {

	/**
	 * <p>获取所有的省份</p>   
	 * @param @return      
	 * @return List<Provinces>
	 */
	ProvinceResp getAllProvinces();
	
	/**
	 * <p>通过省份code获取下面的城市列表</p>   
	 * @param @return      
	 * @return CityResp
	 */
	public CityResp getCitiesByProvinceCode(String provinceCode);
	
	/**
	* 获取产品组page
	* @param @param req
	* @param @return
	* @return Page<ProductGroup>
	 */
	public Page<ProductGroup> getProductGroupPage(ProductGroupReq bizReq);
}
