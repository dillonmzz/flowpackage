package com.bupt.flowpackage.mybatis.trade.dict.model;

import com.bupt.flowpackage.common.domain.BaseBean;
/**
 * <p>字典接口参数对象</p>
 * <p>Company:摩尔科技</p>
 * @author daojian
 * @date 2017年8月31日 下午10:29:48
 */
public class InterfaceParam extends BaseBean{
	private static final long serialVersionUID = 1L;

	private Integer id;

    private Integer interfaceCode;

    private String paramName;

    private String paramNameEn;

    private String paramValue;

    private String paramDesc;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getInterfaceCode() {
		return interfaceCode;
	}

	public void setInterfaceCode(Integer interfaceCode) {
		this.interfaceCode = interfaceCode;
	}

	public String getParamName() {
        return paramName;
    }

    public void setParamName(String paramName) {
        this.paramName = paramName == null ? null : paramName.trim();
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

    public String getParamDesc() {
        return paramDesc;
    }

    public void setParamDesc(String paramDesc) {
        this.paramDesc = paramDesc == null ? null : paramDesc.trim();
    }
}