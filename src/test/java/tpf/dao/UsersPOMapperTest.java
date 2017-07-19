package tpf.dao;

import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.testng.annotations.Test;
import tpf.pojo.UsersPO;

/**
 * Created by zipon on 2017/7/19.
 */
public class UsersPOMapperTest {
    @Autowired
    private SqlSessionFactoryBean sqlSessionFactory;

    private UsersPOMapper usersPOMapper =sqlSessionFactory.getObject().openSession().getMapper(UsersPOMapper.class) ;

    public UsersPOMapperTest() throws Exception {
    }

    @Test
    public void testSelectByPrimaryKey() throws Exception {

        UsersPO usersPO = usersPOMapper.selectByPrimaryKey( 1);
    }

}