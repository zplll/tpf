package tpf.dao;

import tpf.pojo.HostPO;

import java.util.List;

public interface HostPOMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(HostPO record);

    int insertSelective(HostPO record);

    HostPO selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(HostPO record);

    int updateByPrimaryKey(HostPO record);

    List<HostPO> findAll();
}