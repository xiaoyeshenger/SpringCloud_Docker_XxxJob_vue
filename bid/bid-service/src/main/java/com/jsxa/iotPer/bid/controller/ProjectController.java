package com.jsxa.iotPer.bid.controller;

import com.jsxa.iotPer.bid.bo.dto.ProjectPageReqDto;
import com.jsxa.iotPer.bid.bo.dto.ProjectReqDto;
import com.jsxa.iotPer.bid.bo.dto.UpdateProjectStatusReqDto;
import com.jsxa.iotPer.bid.service.ProjectService;
import com.jsxa.iotPer.common.annotation.Log;
import com.jsxa.iotPer.common.bo.vo.PageVo;
import com.jsxa.iotPer.common.bo.vo.ResultVo;
import com.jsxa.iotPer.common.enums.BusinessType;
import com.jsxa.iotPer.common.valid.ValidationGroup;
import com.jsxa.iotPer.common.valid.ValidationGroup.ValidationUpdate;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import springfox.documentation.annotations.ApiIgnore;

import javax.servlet.http.HttpServletResponse;
import java.util.Map;



/*
 * @Author zhangyong
 * @Description ProjectController类
 * @Date 2023/12/18 11:14
 * @Param
 * @return
 **/
@RestController
@RequestMapping("/bid/project")
@Api(tags = "项目相关接口")
@Validated
@RequiredArgsConstructor
public class ProjectController {

    private final ProjectService projectService;


    /**
     * @Author zhangyong
     * @Description //(1) 添加项目信息
     * @Date 2023/12/18 11:14
     * @Param
     * @return
     */
    @Log(businessType = BusinessType.INSERT)
    @ApiOperation("添加项目信息")
    @PostMapping(value = "addProject", produces = { "application/json" })
    public ResultVo<Map<String, Object>> addProject(
            @Validated ProjectReqDto projectReqDto,
            @ApiIgnore MultipartHttpServletRequest request
    ){
        return ResultVo.ok(projectService.addProject(projectReqDto,request));
    }

    /**
     * @Author zhangyong
     * @Description //(2) 通过id删除项目信息
     * @Date 2023/12/18 11:14
     * @Param
     * @return
     */
    @Log(businessType = BusinessType.DELETE)
    @ApiOperation("通过id删除项目信息")
    @ApiImplicitParam(name = "id", value = "项目id", example = "133", dataType = "Long", paramType = "form")
    @GetMapping("/deleteProjectById/{id}")
    public ResultVo<Map<String, Object>> deleteProjectById(
            @PathVariable Long id
    ){
         return ResultVo.ok(projectService.deleteProjectById(id));
    }

    /**
     * @Author zhangyong
     * @Description //(3) 更新项目信息
     * @Date 2023/12/18 11:14
     * @Param
     * @return
     */
    @Log(businessType = BusinessType.UPDATE)
    @ApiOperation("更新项目信息")
    @PostMapping(value = "updateProject", produces = {"application/json"})
    public ResultVo<Map<String, Object>> updateProject(
            @Validated({ValidationUpdate.class}) ProjectReqDto projectReqDto,
            @ApiIgnore MultipartHttpServletRequest request
    ){
        return ResultVo.ok(projectService.updateProject(projectReqDto,request));
    }

    /**
     * @Author zhangyong
     * @Description //(4) 通过id查询项目信息
     * @Date 2023/12/18 11:14
     * @Param
     * @return
     */
    @ApiOperation("通过id查询项目信息")
    @ApiImplicitParam(name = "id", value = "项目id", example = "133", dataType = "Long", paramType = "form")
    @GetMapping("/getProjectById/{id}")
    public ResultVo<Map<String, Object>> getProjectById(
            @PathVariable Long id
    ){
        return ResultVo.ok(projectService.getProjectById(id));
    }

    /**
    * @Author zhangyong
    * @Description //(5) 查询所有的项目信息列表并分页(支持关键字查询)
    * @Date 2023/12/18 11:14
    * @Param
    * @return
    */
    @ApiOperation("查询所有的项目信息列表并分页(支持关键字查询)")
    @PostMapping(value = "getProjectListPageVo", produces = { "application/json" })
    public ResultVo<PageVo<Map<String, Object>>> getProjectListPageVo(
            @Validated({ValidationGroup.ValidationPage.class}) @RequestBody ProjectPageReqDto projectPageReqDto
    ){
        return ResultVo.ok(projectService.getProjectListPageVo(projectPageReqDto));
    }

    /**
     * @Author zhangyong
     * @Description //(6) 下载项目标准上传模板
     * @Date 2023/12/18 11:14
     * @Param
     * @return
     */
    @ApiOperation("下载项目标准上传模板")
    @GetMapping("/downloadTemplateExcel")
    public void downloadTemplateExcel(
        @ApiIgnore HttpServletResponse response
    ){
        projectService.downloadTemplateExcel(response);
    }

    /**
     * @Author zhangyong
     * @Description //(6) 通过excel导入项目
     * @Date 2023/12/18 11:14
     * @Param
     * @return
     */
    @ApiOperation("通过excel导入项目")
    @PostMapping("importByExcel")
    public  ResultVo<Map<String, Object>> importByExcel(
        @ApiIgnore MultipartHttpServletRequest request
    ){
        return ResultVo.ok(projectService.importByExcel(request));
    }

    /**
     * @Author zhangyong
     * @Description //(8) 导出项目到excel
     * @Date 2023/12/18 11:14
     * @Param
     * @return
     */
    @ApiOperation("导出项目到excel")
    @GetMapping("/exportToExcel")
    public void exportToExcel(
        @ApiIgnore HttpServletResponse response,
        @Validated @RequestBody ProjectPageReqDto projectPageReqDto

    ){
        projectService.exportToExcel(projectPageReqDto,response);
    }


    /**
     * @Author zhangyong
     * @Description //(9) 修改项目状态
     * @Date 2023/12/18 11:14
     * @Param
     * @return
     */
    @Log(businessType = BusinessType.UPDATE)
    @ApiOperation("修改项目状态")
    @PostMapping(value = "updateStatus", produces = {"application/json"})
    public ResultVo<Map<String, Object>> updateStatus(
            @Validated @RequestBody UpdateProjectStatusReqDto updateProjectStatusReqDto
    ){
        return ResultVo.ok(projectService.updateStatus(updateProjectStatusReqDto));
    }
}