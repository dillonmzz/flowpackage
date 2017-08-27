package com.bupt.flowpackage.biz.system.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bupt.flowpackage.biz.system.model.ProductAddReq;
import com.bupt.flowpackage.biz.system.model.ProductGroupAddReq;
import com.bupt.flowpackage.biz.system.model.ProductGroupCloneReq;
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
import com.bupt.flowpackage.utils.RandomUtil;
import com.bupt.flowpackage.utils.Signature;
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
	public static Logger logger = LoggerFactory.getLogger(ProductGroupServiceImpl.class);
	
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
	
	public List<ProductGroup> getProductGroupList() {
		List<ProductGroup> pgroupList = productGroupMapper.selectProductGroupList();
		return pgroupList;
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
	
	@Transactional("trade")
	public int productGroupClone(ProductGroupCloneReq bizReq){
		SessionVo sessionVo = SessionUtil.getAdminSessionInfo();
		ProductGroup pgroup = productGroupMapper.selectByPrimaryKey(bizReq.getClonePGroupId());
		if(pgroup == null) {
			BizException.warn(105, "源组不存在!");
		}
		
		ProductGroup productGroup = new ProductGroup();
		BeanUtils.copyProperties(bizReq, productGroup);
		
		ProductGroup temp = productGroupMapper.selectBySelective(productGroup);
		if(temp != null) {
			BizException.warn(105, "目标组已存在!");
		}
		
		productGroup.setCreateName(sessionVo.getLoginName());
		//添加产品组
		productGroupMapper.insert(productGroup);
		int insertNum = 0;
		//获取原始产品组的产品，并修改相关属性
		List<Product> productList = productMapper.selectByPGroupId(bizReq.getClonePGroupId());
		if(productList != null && productList.size() > 0) {
			for(Product product : productList) {
				product.setProductGroupId(productGroup.getId());
				product.setCreateName(sessionVo.getLoginName());
				Date now = new Date();
				product.setCreateTime(now);
				String md5Str = RandomUtil.produceRequestNo(now) + 
						product.getProductGroupId() + product.getFlowValue() + product.getFlowType();
				md5Str = Signature.MD5(md5Str);
				product.setProductCode(md5Str);
			}
			insertNum = productMapper.insertProductBatch(productList);
		}
		return insertNum;
	}
	
	@Transactional("trade")
	public int productUpdate(ProductAddReq bizReq) {
		SessionVo sessionVo = SessionUtil.getAdminSessionInfo();
		//需要添加的产品
		List<Product> addProductList = new ArrayList<Product>();
		//需要更新的产品
		List<Product> updateProductList = new ArrayList<Product>();
		//不删除的产品
		List<Integer> noDeleteList = new ArrayList<Integer>();
		for(int i=0; i<bizReq.getId().length; i++) {
			Product temp = new Product();
			temp.setProductGroupId(bizReq.getProductGroupId());
			temp.setFlowValue(bizReq.getFlowValue()[i]);
			temp.setMarketPrice(bizReq.getMarketPrice()[i]);
			temp.setFlowType(bizReq.getFlowType()[i]);
			temp.setFlowDesc(bizReq.getFlowDesc()[i]);
			if(bizReq.getId()[i] == null) {
				//不存在流量和金额的不处理
				if(temp.getFlowValue() == null || temp.getMarketPrice() == null) {
					continue;
				}
				temp.setCreateName(sessionVo.getLoginName());
				Date now = new Date();
				temp.setCreateTime(now);
				String md5Str = RandomUtil.produceRequestNo(now) + 
						temp.getProductGroupId() + temp.getFlowValue() + temp.getFlowType();
				md5Str = Signature.MD5(md5Str);
				temp.setProductCode(md5Str);
				addProductList.add(temp);
			}else {
				temp.setId(bizReq.getId()[i]);
				updateProductList.add(temp);
				noDeleteList.add(temp.getId());
			}
		}
		int delNum = 0;
		int insertNum = 0;
		int updateNum = 0;
		//查询产品组下的所有产品id
		List<Integer> productIds = productMapper.selectProductIdsPGroupId(bizReq.getProductGroupId());
		if(productIds != null && noDeleteList != null) {
			for(Integer productId : noDeleteList) {
				if(productIds.contains(productId)) {
					productIds.remove(productId);
				}
			}
			//存在产品则可以删除
			if(productIds.size() > 0) {
				delNum = productMapper.deleteBatch(productIds);
			}
			//存在需要更改的值，则可以更改
			if(updateProductList.size() > 0) {
				updateNum = productMapper.updateBatch(updateProductList);
			}
		}
		if(addProductList.size() > 0) {
			insertNum = productMapper.insertProductBatch(addProductList);
		}
		logger.info("\r\n批量更新产品pgroupId={}, delNum={}, insertNum={}, updateNum={}", bizReq.getProductGroupId(), delNum, insertNum, updateNum);
		return updateNum;
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
			resp.setProductGroupId(pgroupId);
		}else {
			BizException.warn(105, "产品组不存在!");
		}
		
		List<Product> productList = productMapper.selectByPGroupId(pgroupId);
		resp.setProductList(productList);
		return resp;
	}
	
}
 