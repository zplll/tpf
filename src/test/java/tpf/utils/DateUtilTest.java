package tpf.utils;

import org.testng.annotations.Test;

import static org.testng.Assert.*;

/**
 * Created by zipon on 2017/7/20.
 */
public class DateUtilTest {
    @Test
    public void testGetNow() throws Exception {
        System.out.println(DateUtil.getNow());
    }

}