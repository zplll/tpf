package tpf.controller;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

/**
 * Created by zipon on 2017/7/23.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:config/spring-mybatis.xml"})
public class HostsManagerControllerTest {
    @Test
    public void getAllHosts() throws Exception {
        HostsManagerController hostsManagerController=new HostsManagerController();
        String result = hostsManagerController.getAllHosts(1,2);
        System.out.println(result);
    }


}
