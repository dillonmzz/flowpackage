package com.bupt.flowpackage.mybatis.trade.provider.model;

import java.util.Date;

import com.bupt.flowpackage.common.domain.PageRequest;

public class Provider extends PageRequest{
	private static final long serialVersionUID = 1L;

	private Integer id;

    private String providerCode;

    private String providerName;

    private Float balance;

    private Float totalMoney;

    private Boolean status;

    private Integer callTime = 12;

    private Integer concurrentNum = 0;

    private Byte receiveType;

    private String providerIp;

    private String visitUrl;

    private String providerDesc;

    private String symbolCode;
    
    private Date createTime;

    private String createName;

    private Date modifyTime;

    private String modifyName;
    
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
		this.createName = createName;
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
		this.modifyName = modifyName;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getProviderCode() {
        return providerCode;
    }

    public void setProviderCode(String providerCode) {
        this.providerCode = providerCode == null ? null : providerCode.trim();
    }

    public String getProviderName() {
        return providerName;
    }

    public void setProviderName(String providerName) {
        this.providerName = providerName == null ? null : providerName.trim();
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

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    public Integer getCallTime() {
        return callTime;
    }

    public void setCallTime(Integer callTime) {
        this.callTime = callTime;
    }

    public Integer getConcurrentNum() {
        return concurrentNum;
    }

    public void setConcurrentNum(Integer concurrentNum) {
        this.concurrentNum = concurrentNum;
    }

    public Byte getReceiveType() {
        return receiveType;
    }

    public void setReceiveType(Byte receiveType) {
        this.receiveType = receiveType;
    }

    public String getProviderIp() {
        return providerIp;
    }

    public void setProviderIp(String providerIp) {
        this.providerIp = providerIp == null ? null : providerIp.trim();
    }

    public String getVisitUrl() {
        return visitUrl;
    }

    public void setVisitUrl(String visitUrl) {
        this.visitUrl = visitUrl == null ? null : visitUrl.trim();
    }

    public String getProviderDesc() {
        return providerDesc;
    }

    public void setProviderDesc(String providerDesc) {
        this.providerDesc = providerDesc == null ? null : providerDesc.trim();
    }

    public String getSymbolCode() {
        return symbolCode;
    }

    public void setSymbolCode(String symbolCode) {
        this.symbolCode = symbolCode == null ? null : symbolCode.trim();
    }
}