package com.bupt.flowpackage.biz.system.model;

import java.util.List;

import com.bupt.flowpackage.common.domain.BaseBean;
import com.bupt.flowpackage.mybatis.trade.cities.model.Cities;

public class CityResp extends BaseBean{

	private static final long serialVersionUID = 1L;

	private List<Cities> cityList;

	public List<Cities> getCityList() {
		return cityList;
	}

	public void setCityList(List<Cities> cityList) {
		this.cityList = cityList;
	}
}
