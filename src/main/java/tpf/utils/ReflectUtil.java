package tpf.utils;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by zipon on 2017/7/21.
 */
public class ReflectUtil {

    /**
     * 根据类名获取类中所有属性
     * @param classStr
     * @return
     * by zipon
     */
    public static List<String> getPropFromClass(String classStr){
        List<String> columns =new ArrayList<String>();
        //反射获取POJO属性作为列
        try {
            Class  clazz = Class.forName(classStr);
            Field[] fields = clazz.getDeclaredFields();
            for(Field field:fields){
                columns.add(field.getName());
            }
            //System.out.println(columns);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return columns;
    }
}
