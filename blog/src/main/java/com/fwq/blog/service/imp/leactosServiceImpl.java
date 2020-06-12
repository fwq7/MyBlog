package com.fwq.blog.service.imp;

import com.fwq.blog.entity.leacots;
import com.fwq.blog.mapper.LeacotsMapper;
import com.fwq.blog.service.LeactosService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class leactosServiceImpl implements LeactosService {
    @Autowired
    public LeacotsMapper leacotsMapper;

    @Override
    public List<leacots> selectAll() {
        return leacotsMapper.selectAll();
    }

    @Override
    public List<leacots> selectBypage(List list, Integer p) {
        List leacots = new ArrayList();
        if(list.size()<5){
            return list;
        }
        else{
            for ( int j=(p-1)*5,i= (p-1)*5;i<list.size()&&i<j+5;i++)
            {

                leacots.add(list.get(i));
            }

        }
        return leacots;
    }
    @Override
    public Boolean addLeacot(leacots ls) {
        return leacotsMapper.addLeacot(ls)>0?true:false;
    }
}
