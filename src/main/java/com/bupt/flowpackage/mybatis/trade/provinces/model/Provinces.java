package com.bupt.flowpackage.mybatis.trade.provinces.model;

import com.bupt.flowpackage.common.domain.BaseBean;

public class Provinces extends BaseBean{
	private static final long serialVersionUID = 1L;

	private Integer id;

    private String provinceCode;

    private String provinceName;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getProvinceCode() {
        return provinceCode;
    }

    public void setProvinceCode(String provinceCode) {
        this.provinceCode = provinceCode == null ? null : provinceCode.trim();
    }

    public String getProvinceName() {
        return provinceName;
    }

    public void setProvinceName(String provinceName) {
        this.provinceName = provinceName == null ? null : provinceName.trim();
    }
}