package com.bupt.flowpackage.biz.system.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bupt.flowpackage.biz.system.model.CityResp;
import com.bupt.flowpackage.biz.system.model.ProvinceResp;
import com.bupt.flowpackage.biz.system.service.SystemService;
import com.bupt.flowpackage.mybatis.trade.cities.mapper.CitiesMapper;
import com.bupt.flowpackage.mybatis.trade.cities.model.Cities;
import com.bupt.flowpackage.mybatis.trade.provinces.mapper.ProvincesMapper;
import com.bupt.flowpackage.mybatis.trade.provinces.model.Provinces;
@Service
public class SystemServiceImpl implements SystemService{
	@Resource
	private ProvincesMapper provincesMapper;
	@Resource
	private CitiesMapper citiesMapper;

	@Override
	public ProvinceResp getAllProvinces() {
		ProvinceResp provinceResp = new ProvinceResp();
		List<Provinces> provinceList = provincesMapper.selectAll();
		provinceResp.setProvinceList(provinceList);
		return provinceResp;
	}

	@Override
	public CityResp getCitiesByProvinceCode(String provinceCode) {
		CityResp cityResp = new CityResp();
		Cities city = new Cities();
		city.setProvinceCode(provinceCode);
		city.setStatus(true);
		List<Cities> cityList = citiesMapper.selectBySelective(city);
		cityResp.setCityList(cityList);
		return cityResp;
	}
}
