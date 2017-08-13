package com.bupt.flowpackage.mybatis.trade.productgroup.mapper;

import com.bupt.flowpackage.common.annotation.MyBatisRepository;
import com.bupt.flowpackage.mybatis.trade.productgroup.model.ProductGroup;
@MyBatisRepository
public interface ProductGroupMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ProductGroup record);

    int insertSelective(ProductGroup record);

    ProductGroup selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ProductGroup record);

    int updateByPrimaryKey(ProductGroup record);
}