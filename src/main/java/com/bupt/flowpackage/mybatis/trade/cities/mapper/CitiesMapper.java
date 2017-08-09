package com.bupt.flowpackage.mybatis.trade.cities.mapper;

import java.util.List;

import com.bupt.flowpackage.common.annotation.MyBatisRepository;
import com.bupt.flowpackage.mybatis.trade.cities.model.Cities;
@MyBatisRepository
public interface CitiesMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Cities record);

    int insertSelective(Cities record);

    Cities selectByPrimaryKey(Integer id);
    
    List<Cities> selectBySelective(Cities cities);

    int updateByPrimaryKeySelective(Cities record);

    int updateByPrimaryKey(Cities record);
}