package com.bupt.flowpackage.biz.system.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bupt.flowpackage.biz.system.model.ProvinceResp;
import com.bupt.flowpackage.biz.system.service.SystemService;
import com.bupt.flowpackage.mybatis.trade.provinces.mapper.ProvincesMapper;
import com.bupt.flowpackage.mybatis.trade.provinces.model.Provinces;
@Service
public class SystemServiceImpl implements SystemService{
	@Resource
	private ProvincesMapper provincesMapper;

	@Override
	public ProvinceResp getAllProvinces() {
		ProvinceResp provinceResp = new ProvinceResp();
		List<Provinces> provinceList = provincesMapper.selectAll();
		provinceResp.setProvinceList(provinceList);
		return provinceResp;
	}
	
}
