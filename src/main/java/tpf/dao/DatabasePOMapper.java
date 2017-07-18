package tpf.dao;

import tpf.pojo.DatabasePO;

public interface DatabasePOMapper {
    int deleteByPrimaryKey(Long id);

    int insert(DatabasePO record);

    int insertSelective(DatabasePO record);

    DatabasePO selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(DatabasePO record);

    int updateByPrimaryKey(DatabasePO record);
}