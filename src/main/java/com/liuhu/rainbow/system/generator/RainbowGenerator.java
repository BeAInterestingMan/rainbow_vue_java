package com.liuhu.rainbow.system.generator;

import com.baomidou.mybatisplus.annotation.DbType;
import com.baomidou.mybatisplus.generator.AutoGenerator;
import com.baomidou.mybatisplus.generator.config.DataSourceConfig;
import com.baomidou.mybatisplus.generator.config.GlobalConfig;
import com.baomidou.mybatisplus.generator.config.PackageConfig;
import com.baomidou.mybatisplus.generator.config.StrategyConfig;
import com.baomidou.mybatisplus.generator.config.rules.NamingStrategy;
import com.baomidou.mybatisplus.generator.engine.FreemarkerTemplateEngine;

/**
 * 代码生成器
 * @author melo、lh
 * @createTime 2019-06-05 09:21:37
 */
public class RainbowGenerator {

    public static void main(String[] args) {
        try {
            AutoGenerator mpg = new AutoGenerator();
            // 选择 freemarker 引擎，默认 Velocity
            mpg.setTemplateEngine(new FreemarkerTemplateEngine());

            // 全局配置
            GlobalConfig gc = new GlobalConfig();
            gc.setAuthor("liuhu");
            gc.setOutputDir("F:\\vue_poject\\rainbow_perfect\\src\\main\\java");
            // 是否覆盖同名文件，默认是false
            gc.setFileOverride(false);
            // 不需要ActiveRecord特性的请改为false
            gc.setActiveRecord(true);
            // XML 二级缓存
            gc.setEnableCache(false);
            // XML ResultMap
            gc.setBaseResultMap(true);
            // XML columList
            gc.setBaseColumnList(false);
            mpg.setGlobalConfig(gc);

            // 数据源配置
            DataSourceConfig dsc = new DataSourceConfig();
            dsc.setDbType(DbType.MYSQL);
            dsc.setDriverName("com.mysql.cj.jdbc.Driver");
            dsc.setUsername("root");
            dsc.setPassword("123456");
            dsc.setUrl("jdbc:mysql://129.211.60.109:3306/rainbow?useUnicode=true&characterEncoding=UTF-8&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=GMT%2b8");
            mpg.setDataSource(dsc);

            // 策略配置
            StrategyConfig strategy = new StrategyConfig();
            // 全局大写命名 ORACLE 注意
            strategy.setCapitalMode(true);
            // 此处可以修改为您的表前缀
            strategy.setTablePrefix(new String[]{"sys_"});
            // 表名生成策略（忽略表名下划线）
            strategy.setNaming(NamingStrategy.underline_to_camel);
            // 需要生成的表
            strategy.setInclude(new String[]{"sys_menu"});
            mpg.setStrategy(strategy);

            // 包配置
            PackageConfig pc = new PackageConfig();
            // 根路径
            pc.setParent("com.liuhu.rainbow.system");
            pc.setEntity("entity");
            pc.setController("controller");
            pc.setService("service");
            pc.setServiceImpl("service.impl");
            pc.setXml("mapper");
            mpg.setPackageInfo(pc);
            mpg.execute();
            System.out.println("生成代码成功");
        }catch (Exception ex){
            System.out.println("生成代码失败");
        }
    }
}