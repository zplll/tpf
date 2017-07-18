package tpf.dao;

import tpf.pojo.HostPO;

public interface HostPOMapper {
    int deleteByPrimaryKey(Long id);

    int insert(HostPO record);

    int insertSelective(HostPO record);

    HostPO selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(HostPO record);

    int updateByPrimaryKey(HostPO record);
}