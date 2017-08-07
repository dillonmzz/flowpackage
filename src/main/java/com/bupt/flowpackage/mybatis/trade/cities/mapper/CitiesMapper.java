package com.bupt.flowpackage.mybatis.trade.cities.mapper;

import com.bupt.flowpackage.mybatis.trade.cities.model.Cities;

public interface CitiesMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Cities record);

    int insertSelective(Cities record);

    Cities selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Cities record);

    int updateByPrimaryKey(Cities record);
}