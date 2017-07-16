package tpf.dao;

import tpf.pojo.UsersPO;

public interface UsersPOMapper {
    int deleteByPrimaryKey(Integer userId);

    int insert(UsersPO record);

    int insertSelective(UsersPO record);

    UsersPO selectByPrimaryKey(Integer userId);

    int updateByPrimaryKeySelective(UsersPO record);

    int updateByPrimaryKey(UsersPO record);
}