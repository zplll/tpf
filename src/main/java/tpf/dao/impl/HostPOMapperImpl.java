package tpf.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Service;
import tpf.dao.HostPOMapper;
import tpf.pojo.HostPO;
import tpf.service.BaseOperator;

import java.util.List;

/**
 * Created by zipon on 2017/7/19.
 */
@Service
public class HostPOMapperImpl implements HostPOMapper {

    private SqlSessionFactory ssf = BaseOperator.ssf;


    @Override
    public int deleteByPrimaryKey(Integer id) {
        SqlSession ss = ssf.openSession();
        int result =0 ;
        try {
            HostPOMapper hostPOMapper = ss.getMapper(HostPOMapper.class);
            result = hostPOMapper.deleteByPrimaryKey(id);
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            ss.close();
        }
        return result;

    }
    @Override
    public int insert(HostPO record) {
        SqlSession ss = ssf.openSession();
        int result =0 ;
        try {
            HostPOMapper hostPOMapper = ss.getMapper(HostPOMapper.class);
            result = hostPOMapper.insert(record);
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            ss.close();
        }
        return result;
    }
    @Override
    public int insertSelective(HostPO record) {
        SqlSession ss = ssf.openSession();
        int result =0 ;
        try {
            HostPOMapper hostPOMapper = ss.getMapper(HostPOMapper.class);
            result = hostPOMapper.insertSelective(record);
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            ss.close();
        }
        return result;
    }


    @Override
    public HostPO selectByPrimaryKey(Integer id) {
        SqlSession ss = ssf.openSession();
        HostPO result = null ;
        try {
            HostPOMapper hostPOMapper = ss.getMapper(HostPOMapper.class);
            result = hostPOMapper.selectByPrimaryKey(id);
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            ss.close();
        }
        return result;
    }

    @Override
    public int updateByPrimaryKeySelective(HostPO record) {
        SqlSession ss = ssf.openSession();
        int result = 0 ;
        try {
            HostPOMapper hostPOMapper = ss.getMapper(HostPOMapper.class);
            result = hostPOMapper.updateByPrimaryKeySelective(record);
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            ss.close();
        }
        return result;
    }
    @Override
    public int updateByPrimaryKey(HostPO record) {
        SqlSession ss = ssf.openSession();
        int result = 0 ;
        try {
            HostPOMapper hostPOMapper = ss.getMapper(HostPOMapper.class);
            result = hostPOMapper.updateByPrimaryKey(record);
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            ss.close();
        }
        return result;
    }

    @Override
    public List<HostPO> findAll() {
        SqlSession ss = ssf.openSession();
        List<HostPO> result = null ;
        try {
            HostPOMapper hostPOMapper = ss.getMapper(HostPOMapper.class);
            result = hostPOMapper.findAll();
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            ss.close();
        }
        return result;
    }
}
