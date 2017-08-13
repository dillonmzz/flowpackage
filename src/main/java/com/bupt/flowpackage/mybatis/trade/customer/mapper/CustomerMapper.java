package com.bupt.flowpackage.mybatis.trade.customer.mapper;

import com.bupt.flowpackage.mybatis.trade.customer.model.Customer;

public interface CustomerMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Customer record);

    int insertSelective(Customer record);

    Customer selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Customer record);

    int updateByPrimaryKey(Customer record);
}