package com.bupt.flowpackage.mybatis.trade.dict.mapper;

import com.bupt.flowpackage.common.annotation.MyBatisRepository;
import com.bupt.flowpackage.mybatis.trade.dict.model.InterfaceParam;
@MyBatisRepository
public interface InterfaceParamMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(InterfaceParam record);

    int insertSelective(InterfaceParam record);

    InterfaceParam selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(InterfaceParam record);

    int updateByPrimaryKey(InterfaceParam record);
}