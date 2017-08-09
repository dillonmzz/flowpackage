package com.bupt.flowpackage.biz.system.service;

import com.bupt.flowpackage.biz.system.model.CityResp;
import com.bupt.flowpackage.biz.system.model.ProvinceResp;

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
	CityResp getCitiesByProvinceCode(String provinceCode);
}
