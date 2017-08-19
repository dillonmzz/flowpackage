package com.bupt.flowpackage.biz.system.model;

import org.hibernate.validator.constraints.NotBlank;

import com.bupt.flowpackage.common.domain.BaseRequest;

/**
 * <p>Description:产品组添加</p>
 * <p>Company:摩尔科技</p>
 * @author daojian
 * @date 2017年6月12日 下午10:28:25
 */
public class ProductGroupAddReq extends BaseRequest{
	private static final long serialVersionUID = 1L;
	
	/**运营商code*/
	private Byte operatorCode;
	/**省份code*/
	private String provinceCode;
	/**产品组类型*/
	private Byte productType;
	/**产品组名称*/
	@NotBlank(message="产品组名称不能为空！")
	private String productGroupName;
	
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
	public String getProductGroupName() {
		return productGroupName;
	}
	public void setProductGroupName(String productGroupName) {
		this.productGroupName = productGroupName;
	}
}
 