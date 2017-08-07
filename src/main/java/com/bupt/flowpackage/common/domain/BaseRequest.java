package com.bupt.flowpackage.common.domain;

import org.apache.commons.lang.StringUtils;

import com.bupt.flowpackage.utils.RandomUtil;

public class BaseRequest extends BaseBean {

	private static final long serialVersionUID = 1L;
	
	private static ThreadLocal<String> requestNoLocal = new ThreadLocal<String>();
	
	private String operatorId = "web";
	
	public BaseRequest() {
		String requestNo = requestNoLocal.get();
		if(StringUtils.isBlank(requestNo)) {
			this.setRequestNo(RandomUtil.produceRequestNo());
		}
	}
	
	public String getRequestNo() {
		return requestNoLocal.get();
	}

	public void setRequestNo(String requestNo) {
		requestNoLocal.set(requestNo);
	}

	public String getOperatorId() {
		return operatorId;
	}

	public void setOperatorId(String operatorId) {
		this.operatorId = operatorId;
	}
}
