package com.bupt.flowpackage.biz.upstream.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bupt.flowpackage.biz.upstream.service.ProviderService;
import com.bupt.flowpackage.common.domain.Page;
import com.bupt.flowpackage.mybatis.trade.provider.mapper.ProviderMapper;
import com.bupt.flowpackage.mybatis.trade.provider.model.Provider;
import com.bupt.flowpackage.utils.PageRespUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

/** 
* @author 作者 E-mail: 
* @version 创建时间：2017年8月13日 下午6:12:49 
* 类说明 
*/
@Service
public class ProviderServiceImpl implements ProviderService{
	@Resource
	private ProviderMapper providerMapper;
	
	public Page<Provider> getProviderListPage(Provider bizReq){
		PageHelper.startPage(bizReq.getPageNum(), bizReq.getPageSize());
		List<Provider> providerList = providerMapper.selectProviderByPage(bizReq);
		PageInfo<Provider> pageInfo = new PageInfo<Provider>(providerList);
		
		return PageRespUtil.createPage(pageInfo);
	}
}
 