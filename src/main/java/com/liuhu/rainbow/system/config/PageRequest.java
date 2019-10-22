package com.liuhu.rainbow.system.config;

import lombok.Data;

import java.io.Serializable;
/**
 * ��ҳ����
 * @author melo��lh
 * @createTime 2019-10-22 15:24:43
 */

@Data
public class PageRequest  implements Serializable {

    /**��ҳ����*/
    private int pageSize = 10;

    /**��ǰҳ*/
    private int pageNum = 1;

    /**�����ֶ�*/
    private String sort;
}
