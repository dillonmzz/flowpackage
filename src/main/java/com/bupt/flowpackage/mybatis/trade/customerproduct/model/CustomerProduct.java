package com.bupt.flowpackage.mybatis.trade.customerproduct.model;

import java.util.Date;

public class CustomerProduct {
    private Integer id;

    private Integer customerId;

    private String customerAccount;

    private Integer channelProductId;

    private String channelName;

    private Integer flowValue;

    private Float marketPrice;

    private Integer providerDiscount;

    private Integer customerDiscount;

    private Boolean status;

    private Date createTime;

    private String createName;

    private Date modifyTime;

    private String modifyName;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Integer customerId) {
        this.customerId = customerId;
    }

    public String getCustomerAccount() {
        return customerAccount;
    }

    public void setCustomerAccount(String customerAccount) {
        this.customerAccount = customerAccount == null ? null : customerAccount.trim();
    }

    public Integer getChannelProductId() {
        return channelProductId;
    }

    public void setChannelProductId(Integer channelProductId) {
        this.channelProductId = channelProductId;
    }

    public String getChannelName() {
        return channelName;
    }

    public void setChannelName(String channelName) {
        this.channelName = channelName == null ? null : channelName.trim();
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

    public Integer getProviderDiscount() {
        return providerDiscount;
    }

    public void setProviderDiscount(Integer providerDiscount) {
        this.providerDiscount = providerDiscount;
    }

    public Integer getCustomerDiscount() {
        return customerDiscount;
    }

    public void setCustomerDiscount(Integer customerDiscount) {
        this.customerDiscount = customerDiscount;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
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

    public Date getModifyTime() {
        return modifyTime;
    }

    public void setModifyTime(Date modifyTime) {
        this.modifyTime = modifyTime;
    }

    public String getModifyName() {
        return modifyName;
    }

    public void setModifyName(String modifyName) {
        this.modifyName = modifyName == null ? null : modifyName.trim();
    }
}