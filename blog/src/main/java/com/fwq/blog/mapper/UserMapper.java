package com.fwq.blog.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.fwq.blog.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;


import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author fwq
 * @since 2020-05-17
 */
@Mapper
public interface UserMapper extends BaseMapper<User> {

    //根据id查询user
    public User selectByUserid(Integer userid);


    public List<User> selectall();

    //插入user
    public int userSignup(User user);

    //根据账号密码查找
    public User selectByuser_psd(@Param("userid")Integer userid,@Param("psd")String psd);

}
