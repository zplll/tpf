package tpf.dao.impl;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.testng.annotations.Test;
import tpf.dao.HostPOMapper;
import tpf.pojo.HostPO;
import tpf.service.HostPOService;

import java.util.List;

/**
 * Created by zipon on 2017/7/19.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:config/spring-mybatis.xml"})
public class HostPOMapperImplTest {
    @Autowired
    public HostPOService hostPOMapper ;
    @org.junit.Test
    public void selectByPrimaryKey() throws Exception {
        HostPO hostPO = hostPOMapper.selectByPrimaryKey(1);
        System.out.println(hostPO.toString());

    }


}