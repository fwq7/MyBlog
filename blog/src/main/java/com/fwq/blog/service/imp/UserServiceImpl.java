package com.fwq.blog.service.imp;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.fwq.blog.entity.User;
import com.fwq.blog.mapper.UserMapper;
import com.fwq.blog.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author fwq
 * @since 2020-05-17
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {

    @Autowired
    public UserMapper userMapper;
    @Override
    public User selectByUserid(Integer userid) {
        return userMapper.selectByUserid(userid);
    }

    @Override
    public List<User> selectall() {
        return userMapper.selectall();
    }

    @Override
    public Boolean userSignup(User user) {
        return userMapper.userSignup(user)>0?true:false;
    }

    @Override
    public User selectByuser_psd(Integer userid, String psd) {
        return userMapper.selectByuser_psd(userid,psd);
    }
}
