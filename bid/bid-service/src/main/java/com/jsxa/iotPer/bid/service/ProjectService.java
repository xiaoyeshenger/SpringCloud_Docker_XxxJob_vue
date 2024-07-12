package com.jsxa.iotPer.bid.service;

import com.jsxa.iotPer.bid.bo.dto.ProjectPageReqDto;
import com.jsxa.iotPer.bid.bo.dto.ProjectReqDto;
import com.jsxa.iotPer.bid.bo.dto.UpdateProjectStatusReqDto;
import com.jsxa.iotPer.common.bo.vo.PageVo;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import java.util.Map;

/**
 * @Author zhangyong
 * @Description //ProjectService接口
 * @Date 2023/12/18 11:14
 * @Param
 * @return
 */
public interface ProjectService {

    /**
     * @Description 添加项目
     * @Date 2023/12/18 11:14
     */
    Map<String, Object> addProject(ProjectReqDto projectReqDto,MultipartHttpServletRequest request);

    /**
     * @Description 通过id删除项目
     * @Date 2023/12/18 11:14
     */
    Map<String, Object> deleteProjectById(Long id);

    /**
     * @Description 更新项目
     * @Date 2023/12/18 11:14
     */
    Map<String, Object> updateProject(ProjectReqDto projectReqDto,MultipartHttpServletRequest request);

    /**
     * @Description 新增或更新项目
     * @Date 2023/12/18 11:14
     */
    Map<String, Object> insertOrUpdateProject(ProjectReqDto projectReqDto);

    /**
     * @Description 通过id查询项目
     * @Date 2023/12/18 11:14
     */
    Map<String, Object> getProjectById(Long id);

    /**
     * @Description 查询所有项目列表并分页
     * @Date 2023/12/18 11:14
     */
    PageVo<Map<String, Object>> getProjectListPageVo(ProjectPageReqDto projectPageReqDto);

    /**
     * @Description 下载标准上传模板
     * @Date 2023/12/18 11:14
     */
    void downloadTemplateExcel(HttpServletResponse response);

    /**
     * @Description 通过excel导入项目
     * @Date 2023/12/18 11:14
     */
    Map<String, Object> importByExcel(MultipartHttpServletRequest request);

    /**
     * @Description 导出项目到excel(easyExcel方式)
     * @Date 2023/12/18 11:14
     */
    void exportToExcel(ProjectPageReqDto projectPageReqDto,HttpServletResponse response);

    /**
     * @Description 修改项目状态
     * @Date 2023/12/18 11:14
     */
    Map<String, Object> updateStatus(UpdateProjectStatusReqDto updateProjectStatusReqDto);
}