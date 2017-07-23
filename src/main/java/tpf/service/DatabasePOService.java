package tpf.service;

import tpf.pojo.DatabasePO;

import javax.annotation.Resource;

@Resource
public interface DatabasePOService {
    int deleteByPrimaryKey(Integer id);

    int insert(DatabasePO record);

    int insertSelective(DatabasePO record);

    DatabasePO selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(DatabasePO record);

    int updateByPrimaryKey(DatabasePO record);
}