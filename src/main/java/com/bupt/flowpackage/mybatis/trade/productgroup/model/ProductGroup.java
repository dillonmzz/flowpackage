package com.bupt.flowpackage.mybatis.trade.productgroup.model;

import java.util.Date;

import com.bupt.flowpackage.common.domain.BaseBean;

public class ProductGroup extends BaseBean{
	private static final long serialVersionUID = 1L;

	private Integer id;

    private String productGroupName;

    private Byte operatorCode;
    
    private String provinceCode;
    
    private String provinceName;

    private String cityCode;

    private Byte productType;

    private Date createTime;

    private String createName;
    /**子产品数*/
    private Integer childProductNums;

    public String getProvinceName() {
		return provinceName;
	}

	public void setProvinceName(String provinceName) {
		this.provinceName = provinceName;
	}

	public Integer getChildProductNums() {
		return childProductNums;
	}

	public void setChildProductNums(Integer childProductNums) {
		this.childProductNums = childProductNums;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getProductGroupName() {
		return productGroupName;
	}

	public void setProductGroupName(String productGroupName) {
		this.productGroupName = productGroupName == null ? null : productGroupName.trim();
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
        this.provinceCode = provinceCode == null ? null : provinceCode.trim();
    }

    public String getCityCode() {
        return cityCode;
    }

    public void setCityCode(String cityCode) {
        this.cityCode = cityCode == null ? null : cityCode.trim();
    }

    public Byte getProductType() {
        return productType;
    }

    public void setProductType(Byte productType) {
        this.productType = productType;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getCreateName() {
        return createName;
    }

    public void setCreateName(String createName) {
        this.createName = createName == null ? null : createName.trim();
    }
}