package tpf.dao;

import tpf.pojo.DatabasePO;

public interface DatabasePOMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(DatabasePO record);

    int insertSelective(DatabasePO record);

    DatabasePO selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(DatabasePO record);

    int updateByPrimaryKey(DatabasePO record);
}