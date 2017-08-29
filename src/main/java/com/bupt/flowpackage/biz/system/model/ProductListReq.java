package com.bupt.flowpackage.biz.system.model;

import com.bupt.flowpackage.common.domain.PageRequest;

/**
 * <p>Description:产品list查询请求对象</p>
 * <p>Company:摩尔科技</p>
 * @author daojian
 * @date 2017年6月12日 下午10:28:25
 */
public class ProductListReq extends PageRequest{

	private static final long serialVersionUID = 1L;

	private String productCode;
	
	private Byte operatorCode;
    
    private String provinceCode;
    
    private Byte productType;

	public String getProductCode() {
		return productCode;
	}

	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}

	public Byte getOperatorCode() {
		return operatorCode;
	}

	public void setOperatorCode(Byte operatorCode) {
		this.operatorCode = operatorCode;
	}

	public String getProvinceCode() {
		return provinceCode;
	}

	public void setProvinceCode(String provinceCode) {
		this.provinceCode = provinceCode;
	}

	public Byte getProductType() {
		return productType;
	}

	public void setProductType(Byte productType) {
		this.productType = productType;
	}
}
 