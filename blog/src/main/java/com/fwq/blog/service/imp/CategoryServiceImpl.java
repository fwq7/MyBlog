package com.fwq.blog.service.imp;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.fwq.blog.entity.Category;
import com.fwq.blog.mapper.CategoryMapper;
import com.fwq.blog.service.CategoryService;
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
public class CategoryServiceImpl extends ServiceImpl<CategoryMapper, Category> implements CategoryService {

    @Autowired
    public CategoryMapper categoryMapper;

    @Override
    public List<Category> selectAll() {

        return categoryMapper.selectAll();
    }
}
