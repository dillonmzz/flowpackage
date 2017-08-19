package com.bupt.flowpackage.biz.system.service;

import com.bupt.flowpackage.biz.system.model.ProductGroupAddReq;
import com.bupt.flowpackage.biz.system.model.ProductGroupReq;
import com.bupt.flowpackage.common.domain.Page;
import com.bupt.flowpackage.mybatis.trade.productgroup.model.ProductGroup;

/**
 * <p>Description:产品组接口</p>
 * <p>Company:摩尔科技</p>
 * @author daojian
 * @date 2017年6月12日 下午10:28:25
 */
public interface ProductGroupService {
	/**
	* 获取产品组page
	* @param @param req
	* @param @return
	* @return Page<ProductGroup>
	 */
	public Page<ProductGroup> getProductGroupPage(ProductGroupReq bizReq);
	
	/**
	* 产品组添加
	* @param @param bizReq
	* @param @return
	* @return int
	 */
	public int productGroupAdd(ProductGroupAddReq bizReq);
}
 