package com.bupt.flowpackage.biz.system.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bupt.flowpackage.biz.system.model.ProductGroupAddReq;
import com.bupt.flowpackage.biz.system.model.ProductGroupReq;
import com.bupt.flowpackage.biz.system.model.ProductResp;
import com.bupt.flowpackage.biz.system.service.ProductGroupService;
import com.bupt.flowpackage.common.domain.Page;
import com.bupt.flowpackage.common.domain.SessionVo;
import com.bupt.flowpackage.common.exception.BizException;
import com.bupt.flowpackage.common.session.SessionUtil;
import com.bupt.flowpackage.mybatis.trade.channel.mapper.ChannelMapper;
import com.bupt.flowpackage.mybatis.trade.product.mapper.ProductMapper;
import com.bupt.flowpackage.mybatis.trade.product.model.Product;
import com.bupt.flowpackage.mybatis.trade.productgroup.mapper.ProductGroupMapper;
import com.bupt.flowpackage.mybatis.trade.productgroup.model.ProductGroup;
import com.bupt.flowpackage.utils.PageRespUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

/**
 * <p>Description:账号角色权限接口</p>
 * <p>Company:摩尔科技</p>
 * @author daojian
 * @date 2017年6月12日 下午10:28:25
 */
@Service
public class ProductGroupServiceImpl implements ProductGroupService{
	@Resource
	private ProductGroupMapper productGroupMapper;
	@Resource
	private ProductMapper productMapper;
	@Resource
	private ChannelMapper channelMapper;
	
	@Override
	public Page<ProductGroup> getProductGroupPage(ProductGroupReq bizReq){
		ProductGroup productGroup = new ProductGroup();
		BeanUtils.copyProperties(bizReq, productGroup);
		
		PageHelper.startPage(bizReq.getPageNum(), bizReq.getPageSize());
		List<ProductGroup> productGroupList = productGroupMapper.selectProductGroupPage(productGroup);
		PageInfo<ProductGroup> pageInfo = new PageInfo<ProductGroup>(productGroupList);
		
		return PageRespUtil.createPage(pageInfo);
	}
	
	@Override
	public int productGroupAdd(ProductGroupAddReq bizReq) {
		SessionVo sessionVo = SessionUtil.getAdminSessionInfo();
		ProductGroup productGroup = new ProductGroup();
		BeanUtils.copyProperties(bizReq, productGroup);
		
		ProductGroup temp = productGroupMapper.selectBySelective(productGroup);
		if(temp != null) {
			BizException.warn(105, "存在相同的产品组!");
		}
		productGroup.setCreateName(sessionVo.getLoginName());
		productGroupMapper.insert(productGroup);
		return productGroup.getId();
	}
	
	
	@Override
	@Transactional("trade")
	public int productGroupDelete(Integer pgroupId) {
		int deleteNum = productGroupMapper.deleteByPrimaryKey(pgroupId);
		return deleteNum;
	}
	@Override
	public ProductResp getProductList(Integer pgroupId) {
		ProductResp resp = new ProductResp();
		ProductGroup pgroup = productGroupMapper.selectByPrimaryKey(pgroupId);
		if(pgroup != null) {
			resp.setProductGroupName(pgroup.getProductGroupName());
		}else {
			BizException.warn(105, "产品组不存在!");
		}
		
		List<Product> productList = productMapper.selectByPGroupId(pgroupId);
		resp.setProductList(productList);
		return resp;
	}
	
}
 