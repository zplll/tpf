package tpf.dao;

import tpf.pojo.UsersPO;

public interface UsersPOMapper {
    int deleteByPrimaryKey(Long userId);

    int insert(UsersPO record);

    int insertSelective(UsersPO record);

    UsersPO selectByPrimaryKey(Long userId);

    int updateByPrimaryKeySelective(UsersPO record);

    int updateByPrimaryKey(UsersPO record);
}