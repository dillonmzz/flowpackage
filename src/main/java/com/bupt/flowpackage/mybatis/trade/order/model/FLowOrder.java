package com.bupt.flowpackage.mybatis.trade.order.model;

import java.util.Date;

public class FLowOrder {
    private Integer id;

    private String orderNo;

    private String mobile;

    private Integer customerId;

    private String customerAccount;

    private Integer providerId;

    private String providerCode;

    private Integer channelId;

    private String channelName;

    private Byte operateCode;

    private String provinceCode;

    private String cityCode;

    private Integer flowValue;

    private Float marketPrivice;

    private Integer providerDiscount;

    private Integer customerDiscount;

    private Float profit;

    private Byte orderStatus;

    private String providerOrderNo;

    private String customerOrderNo;

    private Byte acceptStatus;

    private Date acceptTime;

    private Byte submitStatus;

    private Date submitTime;

    private Byte subscribeStatus;

    private Date subscribeTime;

    private Byte customerCallbackStatus;

    private Date customerCallbackTime;

    private Date refundTime;

    private String errorMsg;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo == null ? null : orderNo.trim();
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile == null ? null : mobile.trim();
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

    public Integer getProviderId() {
        return providerId;
    }

    public void setProviderId(Integer providerId) {
        this.providerId = providerId;
    }

    public String getProviderCode() {
        return providerCode;
    }

    public void setProviderCode(String providerCode) {
        this.providerCode = providerCode == null ? null : providerCode.trim();
    }

    public Integer getChannelId() {
        return channelId;
    }

    public void setChannelId(Integer channelId) {
        this.channelId = channelId;
    }

    public String getChannelName() {
        return channelName;
    }

    public void setChannelName(String channelName) {
        this.channelName = channelName == null ? null : channelName.trim();
    }

    public Byte getOperateCode() {
        return operateCode;
    }

    public void setOperateCode(Byte operateCode) {
        this.operateCode = operateCode;
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

    public Integer getFlowValue() {
        return flowValue;
    }

    public void setFlowValue(Integer flowValue) {
        this.flowValue = flowValue;
    }

    public Float getMarketPrivice() {
        return marketPrivice;
    }

    public void setMarketPrivice(Float marketPrivice) {
        this.marketPrivice = marketPrivice;
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

    public Float getProfit() {
        return profit;
    }

    public void setProfit(Float profit) {
        this.profit = profit;
    }

    public Byte getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(Byte orderStatus) {
        this.orderStatus = orderStatus;
    }

    public String getProviderOrderNo() {
        return providerOrderNo;
    }

    public void setProviderOrderNo(String providerOrderNo) {
        this.providerOrderNo = providerOrderNo == null ? null : providerOrderNo.trim();
    }

    public String getCustomerOrderNo() {
        return customerOrderNo;
    }

    public void setCustomerOrderNo(String customerOrderNo) {
        this.customerOrderNo = customerOrderNo == null ? null : customerOrderNo.trim();
    }

    public Byte getAcceptStatus() {
        return acceptStatus;
    }

    public void setAcceptStatus(Byte acceptStatus) {
        this.acceptStatus = acceptStatus;
    }

    public Date getAcceptTime() {
        return acceptTime;
    }

    public void setAcceptTime(Date acceptTime) {
        this.acceptTime = acceptTime;
    }

    public Byte getSubmitStatus() {
        return submitStatus;
    }

    public void setSubmitStatus(Byte submitStatus) {
        this.submitStatus = submitStatus;
    }

    public Date getSubmitTime() {
        return submitTime;
    }

    public void setSubmitTime(Date submitTime) {
        this.submitTime = submitTime;
    }

    public Byte getSubscribeStatus() {
        return subscribeStatus;
    }

    public void setSubscribeStatus(Byte subscribeStatus) {
        this.subscribeStatus = subscribeStatus;
    }

    public Date getSubscribeTime() {
        return subscribeTime;
    }

    public void setSubscribeTime(Date subscribeTime) {
        this.subscribeTime = subscribeTime;
    }

    public Byte getCustomerCallbackStatus() {
        return customerCallbackStatus;
    }

    public void setCustomerCallbackStatus(Byte customerCallbackStatus) {
        this.customerCallbackStatus = customerCallbackStatus;
    }

    public Date getCustomerCallbackTime() {
        return customerCallbackTime;
    }

    public void setCustomerCallbackTime(Date customerCallbackTime) {
        this.customerCallbackTime = customerCallbackTime;
    }

    public Date getRefundTime() {
        return refundTime;
    }

    public void setRefundTime(Date refundTime) {
        this.refundTime = refundTime;
    }

    public String getErrorMsg() {
        return errorMsg;
    }

    public void setErrorMsg(String errorMsg) {
        this.errorMsg = errorMsg == null ? null : errorMsg.trim();
    }
}