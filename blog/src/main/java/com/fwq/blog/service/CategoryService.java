package com.fwq.blog.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.fwq.blog.entity.Category;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author fwq
 * @since 2020-05-17
 */
public interface CategoryService extends IService<Category> {

    public List<Category> selectAll();

}
