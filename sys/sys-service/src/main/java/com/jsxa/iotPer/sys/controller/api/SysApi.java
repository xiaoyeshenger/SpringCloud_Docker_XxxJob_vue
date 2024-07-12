package com.jsxa.iotPer.sys.controller.api;

import com.jsxa.iotPer.common.bo.dto.PageReqDto;
import com.jsxa.iotPer.common.bo.vo.PageVo;
import com.jsxa.iotPer.common.bo.vo.RegionVo;
import com.jsxa.iotPer.common.bo.vo.ResultVo;
import com.jsxa.iotPer.common.cache.RegionCache;
import com.jsxa.iotPer.sys.bo.po.PageTemplate;
import com.jsxa.iotPer.sys.service.DeptService;
import com.jsxa.iotPer.sys.service.PageTemplateService;
import com.jsxa.iotPer.sys.service.PermissionService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;
import springfox.documentation.annotations.ApiIgnore;

import java.util.HashMap;
import java.util.Map;


/*
 * @Author wangchao
 * @Description  物联感知系统设置模块
 * @Date 2022/11/16 10:41
 * @Param
 * @return
 **/
@RestController
@RequestMapping("iotPer/sys")
@ApiIgnore
@RequiredArgsConstructor
public class SysApi {

    private final PermissionService permissionService;

    private final DeptService deptService;

    private final PageTemplateService pageTemplateService;

    private final RegionCache regionCache;


    //查询APP的权限列表并分页
    @PostMapping("/permission/getAppPermissionListPageVo")
    ResultVo<PageVo<Map<String, Object>>> getAppPermissionListPageVo(@RequestBody PageReqDto pageReqDto){
        return ResultVo.ok(permissionService.getAppPermissionListPageVo(pageReqDto));
    }


    @GetMapping("/dept/getDeptById/{id}")
    ResultVo<Map<String, Object>> getDeptById(@PathVariable Long id){
        return ResultVo.ok(deptService.getDeptById(new HashMap<>(),id));
    }


    @GetMapping("/pageTemplate/getPageTemplateByParkId/{parkId}")
    PageTemplate getPageTemplateByParkId(@PathVariable Long parkId){
        return pageTemplateService.getPageTemplateByParkId(parkId);
    }


    @GetMapping("/region/getRegionByCode/{regionCode}")
    RegionVo getRegionByCode(@PathVariable String regionCode){
        return regionCache.getRegionVoByCode(regionCode);
    }
}
