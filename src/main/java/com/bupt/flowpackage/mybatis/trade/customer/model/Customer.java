package com.bupt.flowpackage.mybatis.trade.customer.model;

import java.util.Date;

public class Customer {
    private Integer id;

    private String customerAccount;

    private String customerName;

    private String dealName;

    private Boolean status;

    private String secretKey;

    private Byte receiveStatusType;

    private String receiveStatusUrl;

    private String bindingIp;

    private String contactName;

    private String contactMobile;

    private String contactQq;

    private String contactEmail;

    private Float balance;

    private Float totalMoney;

    private Float creditMoney;

    private Date createTime;

    private String createName;

    private Date mobifyTime;

    private String modifyName;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCustomerAccount() {
        return customerAccount;
    }

    public void setCustomerAccount(String customerAccount) {
        this.customerAccount = customerAccount == null ? null : customerAccount.trim();
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName == null ? null : customerName.trim();
    }

    public String getDealName() {
        return dealName;
    }

    public void setDealName(String dealName) {
        this.dealName = dealName == null ? null : dealName.trim();
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    public String getSecretKey() {
        return secretKey;
    }

    public void setSecretKey(String secretKey) {
        this.secretKey = secretKey == null ? null : secretKey.trim();
    }

    public Byte getReceiveStatusType() {
        return receiveStatusType;
    }

    public void setReceiveStatusType(Byte receiveStatusType) {
        this.receiveStatusType = receiveStatusType;
    }

    public String getReceiveStatusUrl() {
        return receiveStatusUrl;
    }

    public void setReceiveStatusUrl(String receiveStatusUrl) {
        this.receiveStatusUrl = receiveStatusUrl == null ? null : receiveStatusUrl.trim();
    }

    public String getBindingIp() {
        return bindingIp;
    }

    public void setBindingIp(String bindingIp) {
        this.bindingIp = bindingIp == null ? null : bindingIp.trim();
    }

    public String getContactName() {
        return contactName;
    }

    public void setContactName(String contactName) {
        this.contactName = contactName == null ? null : contactName.trim();
    }

    public String getContactMobile() {
        return contactMobile;
    }

    public void setContactMobile(String contactMobile) {
        this.contactMobile = contactMobile == null ? null : contactMobile.trim();
    }

    public String getContactQq() {
        return contactQq;
    }

    public void setContactQq(String contactQq) {
        this.contactQq = contactQq == null ? null : contactQq.trim();
    }

    public String getContactEmail() {
        return contactEmail;
    }

    public void setContactEmail(String contactEmail) {
        this.contactEmail = contactEmail == null ? null : contactEmail.trim();
    }

    public Float getBalance() {
        return balance;
    }

    public void setBalance(Float balance) {
        this.balance = balance;
    }

    public Float getTotalMoney() {
        return totalMoney;
    }

    public void setTotalMoney(Float totalMoney) {
        this.totalMoney = totalMoney;
    }

    public Float getCreditMoney() {
        return creditMoney;
    }

    public void setCreditMoney(Float creditMoney) {
        this.creditMoney = creditMoney;
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

    public Date getMobifyTime() {
        return mobifyTime;
    }

    public void setMobifyTime(Date mobifyTime) {
        this.mobifyTime = mobifyTime;
    }

    public String getModifyName() {
        return modifyName;
    }

    public void setModifyName(String modifyName) {
        this.modifyName = modifyName == null ? null : modifyName.trim();
    }
}