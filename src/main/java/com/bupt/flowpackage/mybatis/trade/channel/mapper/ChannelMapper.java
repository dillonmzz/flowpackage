package com.bupt.flowpackage.mybatis.trade.channel.mapper;

import com.bupt.flowpackage.mybatis.trade.channel.model.Channel;

public interface ChannelMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Channel record);

    int insertSelective(Channel record);

    Channel selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Channel record);

    int updateByPrimaryKey(Channel record);
}