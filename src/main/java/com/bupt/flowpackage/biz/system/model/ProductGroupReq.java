package com.bupt.flowpackage.biz.system.model;

import com.bupt.flowpackage.common.domain.PageRequest;

/**
 * <p>Description:基础产品组</p>
 * <p>Company:摩尔科技</p>
 * @author daojian
 * @date 2017年8月13日 下午9:28:34
 */
public class ProductGroupReq extends PageRequest{

	private static final long serialVersionUID = 1L;
	/**运营商code*/
	private Short operatorCode;
	/**省份code*/
	private String provinceCode;
	/**产品组类型*/
	private Short productType;

	public Short getOperatorCode() {
		return operatorCode;
	}

	public void setOperatorCode(Short operatorCode) {
		this.operatorCode = operatorCode;
	}

	public String getProvinceCode() {
		return provinceCode;
	}

	public void setProvinceCode(String provinceCode) {
		this.provinceCode = provinceCode;
	}

	public Short getProductType() {
		return productType;
	}

	public void setProductType(Short productType) {
		this.productType = productType;
	}
}
 