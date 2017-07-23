package tpf.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tpf.dao.UsersPOMapper;
import tpf.pojo.CodeEnum;
import tpf.pojo.UsersPO;
import tpf.service.UsersPOService;

/**
 * Created by zipon on 2017/7/23.
 */
@Service("usersPOService")
public class UsersPOServiceImpl implements UsersPOService {
    //注入dao层接口,dao层接口加repository注解，注册bean
    @Autowired
    private UsersPOMapper usersPOMapper;


    @Override
    public int deleteByPrimaryKey(Integer userId) {
        return usersPOMapper.deleteByPrimaryKey(userId);
    }

    @Override
    public int insert(UsersPO record) {
        return usersPOMapper.insert(record);
    }

    @Override
    public int insertSelective(UsersPO record) {
        return usersPOMapper.insertSelective(record);
    }

    @Override
    public UsersPO selectByPrimaryKey(Integer userId) {
        return usersPOMapper.selectByPrimaryKey(userId);
    }

    @Override
    public int updateByPrimaryKeySelective(UsersPO record) {
        return usersPOMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(UsersPO record) {
        return usersPOMapper.updateByPrimaryKey(record);
    }

    @Override
    public UsersPO selectUserByName(String name) {
        return usersPOMapper.selectUserByName(name);
    }

    @Override
    public UsersPO selectUserByEmail(String email) {
        return usersPOMapper.selectUserByEmail(email);
    }

    @Override
    public JSONObject loginCheck(String nameOrEmail, String password){
        JSONObject result =new JSONObject();
        UsersPO user = null;
        try {
            user = usersPOMapper.selectUserByName(nameOrEmail);
            if(user==null){
                user = usersPOMapper.selectUserByEmail(nameOrEmail);;
            }
            if (user==null){
                result.put("code", CodeEnum.ERROR.getCode());
                result.put("message","用户不存在，请仔细检查账户信息！");
                return result;
            }else if(!user.getPasswd().equals(password)){
                result.put("code", CodeEnum.ERROR.getCode());
                result.put("message","密码不正确！");
                return result;
            }else{
                result.put("code",CodeEnum.SUCCESS.getCode());
                result.put("message","登录成功！");
                result.put("data" , JSON.toJSON(user));
                return result;
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }finally {
        }
        return  result;
    }
}
