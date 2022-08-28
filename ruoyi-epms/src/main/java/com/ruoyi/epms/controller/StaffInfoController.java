package com.ruoyi.epms.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.epms.domain.StaffInfo;
import com.ruoyi.epms.service.IStaffInfoService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 员工信息管理Controller
 * 
 * @author yw
 * @date 2022-08-13
 */
@RestController
@RequestMapping("/epms/staffInfo")
public class StaffInfoController extends BaseController
{
    @Autowired
    private IStaffInfoService staffInfoService;

    /**
     * 查询员工信息管理列表
     */
    @PreAuthorize("@ss.hasPermi('epms:staffInfo:list')")
    @GetMapping("/list")
    public TableDataInfo list(StaffInfo staffInfo)
    {
        startPage();
        List<StaffInfo> list = staffInfoService.selectStaffInfoList(staffInfo);
        return getDataTable(list);
    }

    /**
     * 导出员工信息管理列表
     */
    @PreAuthorize("@ss.hasPermi('epms:staffInfo:export')")
    @Log(title = "员工信息管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, StaffInfo staffInfo)
    {
        List<StaffInfo> list = staffInfoService.selectStaffInfoList(staffInfo);
        ExcelUtil<StaffInfo> util = new ExcelUtil<StaffInfo>(StaffInfo.class);
        util.exportExcel(response, list, "员工信息管理数据");
    }

    /**
     * 获取员工信息管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('epms:staffInfo:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(staffInfoService.selectStaffInfoById(id));
    }

    /**
     * 新增员工信息管理
     */
    @PreAuthorize("@ss.hasPermi('epms:staffInfo:add')")
    @Log(title = "员工信息管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody StaffInfo staffInfo)
    {
        staffInfo.setDeptId(getDeptId());
        staffInfo.setUserId(getUserId());
        return toAjax(staffInfoService.insertStaffInfo(staffInfo));
    }

    /**
     * 修改员工信息管理
     */
    @PreAuthorize("@ss.hasPermi('epms:staffInfo:edit')")
    @Log(title = "员工信息管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody StaffInfo staffInfo)
    {
        return toAjax(staffInfoService.updateStaffInfo(staffInfo));
    }

    /**
     * 删除员工信息管理
     */
    @PreAuthorize("@ss.hasPermi('epms:staffInfo:remove')")
    @Log(title = "员工信息管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(staffInfoService.deleteStaffInfoByIds(ids));
    }
}
