package tpf.service;

import com.alibaba.fastjson.JSONObject;
import tpf.pojo.UsersPO;

import javax.annotation.Resource;

@Resource
public interface UsersPOService {
    int deleteByPrimaryKey(Integer userId);

    int insert(UsersPO record);

    int insertSelective(UsersPO record);

    UsersPO selectByPrimaryKey(Integer userId);

    int updateByPrimaryKeySelective(UsersPO record);

    int updateByPrimaryKey(UsersPO record);

    UsersPO selectUserByName(String name);

    UsersPO selectUserByEmail(String email);

    JSONObject loginCheck(String nameOrEmail, String password);
}