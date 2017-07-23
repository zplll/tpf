package tpf.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tpf.dao.HostPOMapper;
import tpf.pojo.HostPO;
import tpf.service.HostPOService;

import java.util.List;

/**
 * Created by zipon on 2017/7/19.
 */
@Service("HostPOService")
public class HostPOServiceImpl implements HostPOService {

    //注入dao层接口,dao层接口加repository注解，注册bean
    @Autowired
    private HostPOMapper hostPOMapper;


    @Override
    public int deleteByPrimaryKey(Integer id) {
        return hostPOMapper.deleteByPrimaryKey(id);
    }
    @Override
    public int insert(HostPO record) {
        return hostPOMapper.insert(record);
    }
    @Override
    public int insertSelective(HostPO record) {
        return hostPOMapper.insertSelective(record);
    }


    @Override
    public HostPO selectByPrimaryKey(Integer id) {
        return hostPOMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(HostPO record) {
        return hostPOMapper.updateByPrimaryKeySelective(record);
    }
    @Override
    public int updateByPrimaryKey(HostPO record) {
        return hostPOMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<HostPO> findAll() {
        return hostPOMapper.findAll();
    }
}
