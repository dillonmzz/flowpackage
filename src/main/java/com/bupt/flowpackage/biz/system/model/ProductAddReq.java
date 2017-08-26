package com.bupt.flowpackage.biz.system.model;

import com.bupt.flowpackage.common.domain.BaseRequest;

/**
 * <p>Description:基础产品添加</p>
 * <p>Company:摩尔科技</p>
 * @author daojian
 * @date 2017年6月12日 下午10:28:25
 */
public class ProductAddReq extends BaseRequest{
	private static final long serialVersionUID = 1L;
	
	private Integer[] id;

    private Integer productGroupId;

    private String[] productCode;

    private Integer[] flowValue;

    private Float[] marketPrice;

    private Byte[] flowType;

    private String[] flowDesc;

	public Integer[] getId() {
		return id;
	}

	public void setId(Integer[] id) {
		this.id = id;
	}

	public Integer getProductGroupId() {
		return productGroupId;
	}

	public void setProductGroupId(Integer productGroupId) {
		this.productGroupId = productGroupId;
	}

	public String[] getProductCode() {
		return productCode;
	}

	public void setProductCode(String[] productCode) {
		this.productCode = productCode;
	}

	public Integer[] getFlowValue() {
		return flowValue;
	}

	public void setFlowValue(Integer[] flowValue) {
		this.flowValue = flowValue;
	}

	public Float[] getMarketPrice() {
		return marketPrice;
	}

	public void setMarketPrice(Float[] marketPrice) {
		this.marketPrice = marketPrice;
	}

	public Byte[] getFlowType() {
		return flowType;
	}

	public void setFlowType(Byte[] flowType) {
		this.flowType = flowType;
	}

	public String[] getFlowDesc() {
		return flowDesc;
	}

	public void setFlowDesc(String[] flowDesc) {
		this.flowDesc = flowDesc;
	}
}
 