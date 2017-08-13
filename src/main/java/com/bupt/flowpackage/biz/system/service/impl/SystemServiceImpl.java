package com.bupt.flowpackage.biz.system.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import com.bupt.flowpackage.biz.system.model.CityResp;
import com.bupt.flowpackage.biz.system.model.ProductGroupReq;
import com.bupt.flowpackage.biz.system.model.ProvinceResp;
import com.bupt.flowpackage.biz.system.service.SystemService;
import com.bupt.flowpackage.common.domain.Page;
import com.bupt.flowpackage.mybatis.account.adminrole.model.AdminRole;
import com.bupt.flowpackage.mybatis.trade.cities.mapper.CitiesMapper;
import com.bupt.flowpackage.mybatis.trade.cities.model.Cities;
import com.bupt.flowpackage.mybatis.trade.productgroup.mapper.ProductGroupMapper;
import com.bupt.flowpackage.mybatis.trade.productgroup.model.ProductGroup;
import com.bupt.flowpackage.mybatis.trade.provinces.mapper.ProvincesMapper;
import com.bupt.flowpackage.mybatis.trade.provinces.model.Provinces;
import com.bupt.flowpackage.utils.PageRespUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
@Service
public class SystemServiceImpl implements SystemService{
	@Resource
	private ProvincesMapper provincesMapper;
	@Resource
	private CitiesMapper citiesMapper;
	@Resource
	private ProductGroupMapper productGroupMapper;

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
	@Override
	public Page<ProductGroup> getProductGroupPage(ProductGroupReq bizReq){
		ProductGroup productGroup = new ProductGroup();
		BeanUtils.copyProperties(bizReq, productGroup);
		
		PageHelper.startPage(bizReq.getPageNum(), bizReq.getPageSize());
		List<ProductGroup> productGroupList = productGroupMapper.selectProductGroupPage(productGroup);
		PageInfo<ProductGroup> pageInfo = new PageInfo<ProductGroup>(productGroupList);
		
		return PageRespUtil.createPage(pageInfo);
	}
}
