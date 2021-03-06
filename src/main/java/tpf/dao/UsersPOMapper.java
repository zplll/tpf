package tpf.dao;

import org.springframework.stereotype.Repository;
import tpf.pojo.UsersPO;
@Repository
public interface UsersPOMapper {
    int deleteByPrimaryKey(Integer userId);

    int insert(UsersPO record);

    int insertSelective(UsersPO record);

    UsersPO selectByPrimaryKey(Integer userId);

    int updateByPrimaryKeySelective(UsersPO record);

    int updateByPrimaryKey(UsersPO record);

    UsersPO selectUserByName(String name);

    UsersPO selectUserByEmail(String email);


}