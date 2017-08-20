package com.bupt.flowpackage.mybatis.trade.channelproduct.mapper;

import com.bupt.flowpackage.common.annotation.MyBatisRepository;
import com.bupt.flowpackage.mybatis.trade.channelproduct.model.ChannelProduct;
@MyBatisRepository
public interface ChannelProductMapper {
    int deleteByPrimaryKey(Integer id);
    
    int insert(ChannelProduct record);

    int insertSelective(ChannelProduct record);

    ChannelProduct selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ChannelProduct record);

    int updateByPrimaryKey(ChannelProduct record);
}