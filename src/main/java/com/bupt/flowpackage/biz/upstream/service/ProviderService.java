package com.bupt.flowpackage.biz.upstream.service;

import com.bupt.flowpackage.common.domain.Page;
import com.bupt.flowpackage.mybatis.trade.provider.model.Provider;

/** 
* @author 作者 E-mail: 
* @version 创建时间：2017年8月13日 下午6:12:30 
* 类说明 
*/
public interface ProviderService {
	
	/**
	* 获取供应商list
	* @param @param bizReq
	* @param @return
	* @return Page<Provider>
	 */
	public Page<Provider> getProviderListPage(Provider bizReq);
	
	
}
 