package tpf.service;

import tpf.pojo.HostPO;

import javax.annotation.Resource;
import java.util.List;

@Resource
public interface HostPOService {
    int deleteByPrimaryKey(Integer id);

    int insert(HostPO record);

    int insertSelective(HostPO record);

    HostPO selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(HostPO record);

    int updateByPrimaryKey(HostPO record);

    List<HostPO> findAll();
}