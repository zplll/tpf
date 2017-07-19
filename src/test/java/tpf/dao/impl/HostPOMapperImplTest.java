package tpf.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.testng.annotations.Test;
import tpf.pojo.HostPO;

import java.util.List;

/**
 * Created by zipon on 2017/7/19.
 */
public class HostPOMapperImplTest {
    @Autowired
    public HostPOMapperImpl hostPOMapper = new HostPOMapperImpl();
    @Test
    public void testSelectByPrimaryKey() throws Exception {
        HostPO hostPO = hostPOMapper.selectByPrimaryKey(1);
        System.out.println(hostPO.toString());
        List<HostPO> hosts = hostPOMapper.findAll();
        System.out.println(hosts);
    }

}