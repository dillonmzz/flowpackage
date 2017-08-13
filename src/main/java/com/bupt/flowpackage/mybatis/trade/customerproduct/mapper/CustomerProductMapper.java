package com.bupt.flowpackage.mybatis.trade.customerproduct.mapper;

import com.bupt.flowpackage.mybatis.trade.customerproduct.model.CustomerProduct;

public interface CustomerProductMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CustomerProduct record);

    int insertSelective(CustomerProduct record);

    CustomerProduct selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CustomerProduct record);

    int updateByPrimaryKey(CustomerProduct record);
}