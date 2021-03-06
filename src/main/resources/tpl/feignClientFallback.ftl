package ${table.pkgName};

import com.github.pagehelper.PageInfo;
import ${basePkgName}.vo.${table.javaClassName}VO;
import ${basePkgName}.vo.${table.javaClassName}QueryVO;
<#include "./public/logger.ftl"/>
import org.springframework.stereotype.Component;
<#list table.columns as column><#if column.isPrimaryKey == 1><#assign pk = column></#if></#list>

/**
 * ${table.comments}-FeignClientFallback
 *
 * @author ${table.author!''}
 */
@Component
public class ${table.javaClassName}ClientFallback implements I${table.javaClassName}Client {
    private static final Logger logger = LoggerFactory.getLogger(${table.javaClassName}ClientFallback.class);

    /**
     * 分页查询${table.comments}数据
     *
     * @param query           查询条件
     * @return 分页查询结果
     */
    @Override
    public PageInfo<${table.javaClassName}VO> getRecordList(${table.javaClassName}QueryVO query) {
        return null;
    }

    <#if pk??>
    /**
     * 根据主键查询${table.comments}数据
     *
     * @param ${pk.columnCamelNameLower}  待查询的${table.comments}记录${pk.columnComment}
     * @return ${table.comments}数据
     */
    @Override
    public ${table.javaClassName}VO getRecord(${pk.columnJavaType} ${pk.columnCamelNameLower}) {
        return null;
    }</#if>

    /**
     * 插入${table.comments}记录
     *
     * @param vo    待插入的数据
     * @return 是否成功
     */
    @Override
    public boolean insert(${table.javaClassName}VO vo) {
        return false;
    }

    /**
     * 更新${table.comments}记录
     *
     * @param vo    待更新的数据
     * @return 是否成功
     */
    @Override
    public boolean update(${table.javaClassName}VO vo) {
        return false;
    }

    <#if pk??>
    /**
     * 删除${table.comments}记录
     *
     * @param ${pk.columnCamelNameLower}  待删除的${table.comments}记录${pk.columnComment}
     * @return 是否成功
     */
    @Override
    public boolean delete(${pk.columnJavaType} ${pk.columnCamelNameLower}) {
        return false;
    }</#if>
}