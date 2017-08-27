package com.bupt.flowpackage.biz.system.model;

import javax.validation.constraints.Min;

import org.hibernate.validator.constraints.NotBlank;

import com.bupt.flowpackage.common.domain.BaseRequest;

/**
 * <p>Description:产品组克隆请求</p>
 * <p>Company:摩尔科技</p>
 * @author daojian
 * @date 2017年6月12日 下午10:28:25
 */
public class ProductGroupCloneReq extends BaseRequest{

	private static final long serialVersionUID = 1L;
	@Min(value=1, message="来源产品组不能为空")
	private Integer clonePGroupId;
	
	private Byte operatorCode;
	
	private String provinceCode;
	
	private Byte productType;
	@NotBlank(message="产品组名称不能为空")
	private String productGroupName;

	public Integer getClonePGroupId() {
		return clonePGroupId;
	}

	public void setClonePGroupId(Integer clonePGroupId) {
		this.clonePGroupId = clonePGroupId;
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

	public String getProductGroupName() {
		return productGroupName;
	}

	public void setProductGroupName(String productGroupName) {
		this.productGroupName = productGroupName;
	}
}
 