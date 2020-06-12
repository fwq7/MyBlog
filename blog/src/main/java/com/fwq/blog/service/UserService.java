package com.fwq.blog.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.fwq.blog.entity.User;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author fwq
 * @since 2020-05-17
 */
public interface UserService extends IService<User> {

    //根据id查询user
    public User selectByUserid(Integer userid);

    public List<User> selectall();

    public Boolean userSignup(User user);

    //登录验证
    public User selectByuser_psd(Integer userid,String psd);
}
