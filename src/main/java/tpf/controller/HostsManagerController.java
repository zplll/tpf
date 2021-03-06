package tpf.controller;

import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import tk.mybatis.orderbyhelper.OrderByHelper;
import tpf.pojo.HostPO;
import tpf.pojo.PageInfo;
import tpf.service.HostPOService;
import tpf.utils.DateUtil;
import tpf.utils.ReflectUtil;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by zipon on 2017/7/19.
 */
@Controller
public class HostsManagerController {
    @Autowired
    private HostPOService hostPOService;

    /**
     * 查询所有主机配置信息
     * @return
     */
    @RequestMapping(value = "/hosts",produces = "text/plain;charset=UTF-8")
    @ResponseBody
    public String getAllHosts(
            @RequestParam("pagenum") int pageNum,
            @RequestParam("pagesize") int pageSize){
        System.out.println("============================>"+pageNum+"==========>"+pageSize);
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

        //PageHelper.startPage(1,2);
        Page page=PageHelper.startPage(pageNum,pageSize,true);
        OrderByHelper.orderBy("id desc");
        //查询前
        // System.out.println(page);
        List<HostPO> details = hostPOService.findAll();
        //查询后
        //System.out.println(page);

        result.put("columns",columns);
        result.put("details",details);
        result.put("pageinfo",new PageInfo(page));
        return String.valueOf(result);
    }

    /**
     * 创建主机配置
     * @param hostpo
     * @return
     */
    @RequestMapping(value = "/addhost",produces = "text/plain;charset=UTF-8",method = RequestMethod.POST)
    @ResponseBody
    public String addHost(@RequestBody HostPO hostpo){
        hostpo.setId(null);
        hostpo.setCreateTime(DateUtil.getNow());

        JSONObject result = new JSONObject();

        int resultInt =hostPOService.insert(hostpo);
        if (resultInt==1){
            result.put("code",1);
            result.put("message","success");
        }else {
            result.put("code",0);
            result.put("message","add host info failed");
        }
        System.out.println(hostpo.toString());
        return String.valueOf(result);

    }

    //删除host
    @RequestMapping(value = "/deletehost/{hostId}",produces = "text/plain;charset=UTF-8",method = RequestMethod.DELETE)
    @ResponseBody
    public String addHost(@PathVariable Integer hostId){
        JSONObject result = new JSONObject();

        int resultInt =hostPOService.deleteByPrimaryKey(hostId);
        if (resultInt==1){
            result.put("code",1);
            result.put("message","delete success");
        }else {
            result.put("code",0);
            result.put("message","delete host info failed");
        }
        return String.valueOf(result);

    }

    //更改host
    @RequestMapping(value = "/updatehost",produces = "text/plain;charset=UTF-8",method = RequestMethod.POST)
    @ResponseBody
    public String updateHost(@RequestBody HostPO hostPo){
        hostPo.setUpdateTime(DateUtil.getNow());
        System.out.println(hostPo.toString());
        JSONObject result = new JSONObject();

        int resultInt =hostPOService.updateByPrimaryKey(hostPo);
        if (resultInt==1){
            result.put("code",1);
            result.put("message","update success");
        }else {
            result.put("code",0);
            result.put("message","update host info failed");
        }
        return String.valueOf(result);

    }

    //根据id查询host
    @RequestMapping(value = "/hosts/{hostId}",produces = "text/plain;charset=UTF-8",method = RequestMethod.GET)
    @ResponseBody
    public String selectHostById(@PathVariable Integer hostId){
        JSONObject result = new JSONObject();

        HostPO hostPO =hostPOService.selectByPrimaryKey(hostId);

            result.put("columns", ReflectUtil.getPropFromClass("tpf.pojo.HostPO"));
            result.put("details",hostPO);

        return String.valueOf(result);

    }
}
