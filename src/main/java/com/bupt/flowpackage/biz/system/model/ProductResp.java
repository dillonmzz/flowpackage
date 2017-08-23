package com.bupt.flowpackage.biz.system.model;

import java.util.List;

import com.bupt.flowpackage.common.domain.BaseBean;
import com.bupt.flowpackage.mybatis.trade.product.model.Product;

public class ProductResp extends BaseBean{

	private static final long serialVersionUID = 1L;

	private String productGroupName;
	
	private List<Product> productList;

	public String getProductGroupName() {
		return productGroupName;
	}

	public void setProductGroupName(String productGroupName) {
		this.productGroupName = productGroupName;
	}

	public List<Product> getProductList() {
		return productList;
	}

	public void setProductList(List<Product> productList) {
		this.productList = productList;
	}
}
