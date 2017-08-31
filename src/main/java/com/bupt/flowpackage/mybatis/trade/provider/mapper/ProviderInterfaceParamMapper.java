package com.bupt.flowpackage.mybatis.trade.provider.mapper;

import com.bupt.flowpackage.common.annotation.MyBatisRepository;
import com.bupt.flowpackage.mybatis.trade.provider.model.ProviderInterfaceParam;
@MyBatisRepository
public interface ProviderInterfaceParamMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ProviderInterfaceParam record);

    int insertSelective(ProviderInterfaceParam record);

    ProviderInterfaceParam selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ProviderInterfaceParam record);

    int updateByPrimaryKey(ProviderInterfaceParam record);
}