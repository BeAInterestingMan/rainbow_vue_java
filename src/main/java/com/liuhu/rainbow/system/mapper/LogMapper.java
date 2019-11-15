package com.liuhu.rainbow.system.mapper;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.liuhu.rainbow.system.entity.Log;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.Map;

/**
 * 日志持久层接口
 * @author melo、lh
 * @createTime 2019-11-14 15:02:20
 */
@Repository
public interface LogMapper extends BaseMapper<Log> {

    IPage<Log> selectLogWithPage(@Param("page") Page<Log> page,@Param("searchParams") Map<String, Object> searchParams);
}
