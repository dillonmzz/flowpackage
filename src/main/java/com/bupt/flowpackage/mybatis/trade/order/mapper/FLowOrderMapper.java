package com.bupt.flowpackage.mybatis.trade.order.mapper;

import com.bupt.flowpackage.common.annotation.MyBatisRepository;
import com.bupt.flowpackage.mybatis.trade.order.model.FLowOrder;
@MyBatisRepository
public interface FLowOrderMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(FLowOrder record);

    int insertSelective(FLowOrder record);

    FLowOrder selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(FLowOrder record);

    int updateByPrimaryKey(FLowOrder record);
}