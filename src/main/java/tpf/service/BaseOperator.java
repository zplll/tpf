package tpf.service;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.Reader;

/**
 * Created by zipon on 2017/3/7.
 */
public class BaseOperator {
    public static SqlSessionFactory ssf;
    protected static Reader reader;

    static
    {
        try
        {
            reader = Resources.getResourceAsReader("config/mybatis/mybatis-config.xml");
            ssf = new SqlSessionFactoryBuilder().build(reader);
        }
        catch (IOException e)
        {
            e.printStackTrace();
        }
    }
}
