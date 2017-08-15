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
	private Byte operatorCode;
	/**省份code*/
	private String provinceCode;
	/**产品组类型*/
	private Byte productType;

	public Byte getOperatorCode() {
		return operatorCode;
	}

	public void setOperatorCode(Byte operatorCode) {
		this.operatorCode = operatorCode;
	}

	public Byte getProductType() {
		return productType;
	}

	public void setProductType(Byte productType) {
		this.productType = productType;
	}

	public String getProvinceCode() {
		return provinceCode;
	}

	public void setProvinceCode(String provinceCode) {
		this.provinceCode = provinceCode;
	}
}
 