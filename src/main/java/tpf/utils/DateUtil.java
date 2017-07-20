package tpf.utils;

import java.util.Date;
import java.text.SimpleDateFormat;
/**
 * Created by zipon on 2017/7/20.
 */
public class DateUtil {


    public static String getNow() {
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
            return df.format(new Date());// new Date()为获取当前系统时间
        }
    }

