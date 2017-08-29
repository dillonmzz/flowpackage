package com.bupt.flowpackage.mybatis.trade.product.model;

import java.util.Date;

import com.bupt.flowpackage.mybatis.trade.productgroup.model.ProductGroup;

public class Product extends ProductGroup{
	private static final long serialVersionUID = 1L;

	private Integer id;

    private Integer productGroupId;
    
    private String productCode;

    private Integer flowValue;

    private Float marketPrice;

    private Byte flowType;

    private String flowDesc;

    private String createName;
    
    private Date createTime;
    
	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getProductGroupId() {
        return productGroupId;
    }

    public void setProductGroupId(Integer productGroupId) {
        this.productGroupId = productGroupId;
    }

    public String getProductCode() {
        return productCode;
    }

    public void setProductCode(String productCode) {
        this.productCode = productCode == null ? null : productCode.trim();
    }

    public Integer getFlowValue() {
        return flowValue;
    }

    public void setFlowValue(Integer flowValue) {
        this.flowValue = flowValue;
    }

    public Float getMarketPrice() {
        return marketPrice;
    }

    public void setMarketPrice(Float marketPrice) {
        this.marketPrice = marketPrice;
    }

    public Byte getFlowType() {
        return flowType;
    }

    public void setFlowType(Byte flowType) {
        this.flowType = flowType;
    }

    public String getFlowDesc() {
        return flowDesc;
    }

    public void setFlowDesc(String flowDesc) {
        this.flowDesc = flowDesc == null ? null : flowDesc.trim();
    }

    public String getCreateName() {
        return createName;
    }

    public void setCreateName(String createName) {
        this.createName = createName == null ? null : createName.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}