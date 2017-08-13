package com.bupt.flowpackage.mybatis.trade.product.mapper;

import com.bupt.flowpackage.common.annotation.MyBatisRepository;
import com.bupt.flowpackage.mybatis.trade.product.model.Product;
@MyBatisRepository
public interface ProductMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Product record);

    int insertSelective(Product record);

    Product selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Product record);

    int updateByPrimaryKey(Product record);
}