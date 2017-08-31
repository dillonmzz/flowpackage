package com.bupt.flowpackage.biz.upstream.model;

import java.util.List;

import com.bupt.flowpackage.common.domain.BaseBean;
import com.bupt.flowpackage.mybatis.trade.provider.model.Provider;
import com.bupt.flowpackage.mybatis.trade.provider.model.ProviderInterfaceParam;

/**
 * <p>Description:供应商添加或编辑返回</p>
 * <p>Company:摩尔科技</p>
 * @author daojian
 * @date 2017年6月12日 下午10:28:25
 */
public class ProviderAddOrEditResp extends BaseBean{

	private static final long serialVersionUID = 1L;
	/**供应商*/
	private Provider provider;
	/**接口参数*/
	private List<ProviderInterfaceParam> interfaceParamList;

	public Provider getProvider() {
		return provider;
	}

	public void setProvider(Provider provider) {
		this.provider = provider;
	}

	public List<ProviderInterfaceParam> getInterfaceParamList() {
		return interfaceParamList;
	}

	public void setInterfaceParamList(List<ProviderInterfaceParam> interfaceParamList) {
		this.interfaceParamList = interfaceParamList;
	}
}
 