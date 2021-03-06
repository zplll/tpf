package tpf.dao;

import org.springframework.stereotype.Repository;
import tpf.pojo.HostPO;

import java.util.List;
@Repository
public interface HostPOMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(HostPO record);

    int insertSelective(HostPO record);

    HostPO selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(HostPO record);

    int updateByPrimaryKey(HostPO record);

    List<HostPO> findAll();
}