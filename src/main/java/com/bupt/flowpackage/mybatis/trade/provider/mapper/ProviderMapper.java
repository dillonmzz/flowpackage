package com.bupt.flowpackage.mybatis.trade.provider.mapper;

import com.bupt.flowpackage.mybatis.trade.provider.model.Provider;

public interface ProviderMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Provider record);

    int insertSelective(Provider record);

    Provider selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Provider record);

    int updateByPrimaryKey(Provider record);
}