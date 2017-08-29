package com.bupt.flowpackage.mybatis.trade.product.mapper;

import java.util.List;

import com.bupt.flowpackage.common.annotation.MyBatisRepository;
import com.bupt.flowpackage.mybatis.trade.product.model.Product;
@MyBatisRepository
public interface ProductMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Product record);
    
    int insertProductBatch(List<Product> records);

    int insertSelective(Product record);

    Product selectByPrimaryKey(Integer id);
    
    List<Product> selectByPGroupId(Integer pgroupId);
    
    List<Product> selectProductByPage(Product product);
    
    List<Integer> selectProductIdsPGroupId(Integer pgroupId);

    int updateByPrimaryKeySelective(Product record);

    int updateByPrimaryKey(Product record);
    
    int updateBatch(List<Product> records);
    
    int deleteBatch(List<Integer> records);
}