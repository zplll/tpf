package tpf.controller;

import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import tpf.dao.impl.HostPOMapperImpl;
import tpf.pojo.HostPO;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by zipon on 2017/7/19.
 */
@Controller
public class HostsManagerController {
    @Autowired
    private HostPOMapperImpl hostPOMapper = new HostPOMapperImpl();

    @RequestMapping(value = "/hosts",produces = "text/plain;charset=UTF-8")
    @ResponseBody
    public String getAllHosts(){
        JSONObject result = new JSONObject();

        List<String> columns =new ArrayList<String>();
        //反射获取POJO属性作为列
        try {
            Class  clazz = Class.forName("tpf.pojo.HostPO");
            Field[] fields = clazz.getDeclaredFields();
            for(Field field:fields){
                columns.add(field.getName());
            }
            //System.out.println(columns);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        List<HostPO> details = hostPOMapper.findAll();

        result.put("columns",columns);
        result.put("details",details);
        return String.valueOf(result);


    }

}
