package com.fwq.blog.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.fwq.blog.entity.Category;
import org.apache.ibatis.annotations.Mapper;

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
public interface CategoryMapper extends BaseMapper<Category> {

    //查询所有文章类别
    public List<Category> selectAll();
}
