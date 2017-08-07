package com.bupt.flowpackage.biz.system.model;

import java.util.List;

import com.bupt.flowpackage.common.domain.BaseBean;
import com.bupt.flowpackage.mybatis.trade.provinces.model.Provinces;

public class ProvinceResp extends BaseBean{

	private static final long serialVersionUID = 1L;
	
	private List<Provinces> provinceList;

	public List<Provinces> getProvinceList() {
		return provinceList;
	}

	public void setProvinceList(List<Provinces> provinceList) {
		this.provinceList = provinceList;
	}
}
