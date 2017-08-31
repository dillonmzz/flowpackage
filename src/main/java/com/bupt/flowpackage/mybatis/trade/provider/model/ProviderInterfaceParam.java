package com.bupt.flowpackage.mybatis.trade.provider.model;

import com.bupt.flowpackage.mybatis.trade.dict.model.InterfaceParam;

public class ProviderInterfaceParam extends InterfaceParam{
	private static final long serialVersionUID = 1L;
	
	private Integer id;

    private Integer providerId;

    private Integer interfaceCode;

    private String paramNameEn;

    private String paramValue;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getProviderId() {
        return providerId;
    }

    public void setProviderId(Integer providerId) {
        this.providerId = providerId;
    }

    public Integer getInterfaceCode() {
        return interfaceCode;
    }

    public void setInterfaceCode(Integer interfaceCode) {
        this.interfaceCode = interfaceCode;
    }

    public String getParamNameEn() {
        return paramNameEn;
    }

    public void setParamNameEn(String paramNameEn) {
        this.paramNameEn = paramNameEn == null ? null : paramNameEn.trim();
    }

    public String getParamValue() {
        return paramValue;
    }

    public void setParamValue(String paramValue) {
        this.paramValue = paramValue == null ? null : paramValue.trim();
    }
}