package com.liuhu.rainbow.system.config;

import lombok.Data;

import java.io.Serializable;
/**
 * 分页对象
 * @author melo、lh
 * @createTime 2019-10-22 15:24:43
 */

@Data
public class PageRequest  implements Serializable {

    /**分页条数*/
    private int pageSize = 10;

    /**当前页*/
    private int pageNum = 1;

    /**排序字段*/
    private String sort;
}
