package com.ruoyi.epms.controller;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.epms.domain.PenaltyInformation;
import com.ruoyi.epms.domain.vo.PenaltyInformationListVo;
import com.ruoyi.epms.service.IPenaltyInformationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.List;

/**
 * 处罚信息Controller
 * 
 * @author ruoyi
 * @date 2022-08-13
 */
@RestController
@RequestMapping("/epms/punishment")
public class PenaltyInformationController extends BaseController
{
    @Autowired
    private IPenaltyInformationService penaltyInformationService;


    /**
     * 查询处罚信息列表
     */
    @PreAuthorize("@ss.hasPermi('epms:punishment:list')")
    @GetMapping("/list")
    public TableDataInfo list(PenaltyInformation penaltyInformation)
    {
        startPage();
        List<PenaltyInformationListVo> list = penaltyInformationService.selectPenaltyInformationVoList(penaltyInformation);
        return getDataTable(list);
    }

    /**
     * 导出处罚信息列表
     */
    @PreAuthorize("@ss.hasPermi('epms:punishment:export')")
    @Log(title = "处罚信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, PenaltyInformation penaltyInformation)
    {
        List<PenaltyInformation> list = penaltyInformationService.selectPenaltyInformationList(penaltyInformation);
        ExcelUtil<PenaltyInformation> util = new ExcelUtil<PenaltyInformation>(PenaltyInformation.class);
        util.exportExcel(response, list, "处罚信息数据");
    }

    /**
     * 获取处罚信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('epms:punishment:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(penaltyInformationService.selectPenaltyInformationById(id));
    }

    /**
     * 新增处罚信息
     */
    @PreAuthorize("@ss.hasPermi('epms:punishment:add')")
    @Log(title = "处罚信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody PenaltyInformation penaltyInformation)
    {
        penaltyInformation.setUserId(getUserId());
        penaltyInformation.setDeptId(getDeptId());
        return toAjax(penaltyInformationService.insertPenaltyInformation(penaltyInformation));
    }

    /**
     * 修改处罚信息
     */
    @PreAuthorize("@ss.hasPermi('epms:punishment:edit')")
    @Log(title = "处罚信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody PenaltyInformation penaltyInformation)
    {
        return toAjax(penaltyInformationService.updatePenaltyInformation(penaltyInformation));
    }

    /**
     * 删除处罚信息
     */
    @PreAuthorize("@ss.hasPermi('epms:punishment:remove')")
    @Log(title = "处罚信息", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(penaltyInformationService.deletePenaltyInformationByIds(ids));
    }

    @PreAuthorize("@ss.hasPermi('epms:punishment:export')")
    @Log(title = "处罚信息", businessType = BusinessType.EXPORT)
    @PostMapping("/cover")
    public void toExcel(HttpServletResponse response, PenaltyInformation penaltyInformation) throws IOException {
        /*System.out.println(penaltyInformation.getStaffId());
        FileUtils.setAttachmentResponseHeader(response, "");
        File file = ResourceUtils.getFile("classpath:excel/fj1.xlsx");
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("demo", new demo());
        map.put("aa", "vv");
        JxlsUtils.exportExcel(new FileInputStream(file), response.getOutputStream(), map);*/
        penaltyInformationService.exportPenaltyInformation(penaltyInformation.getStaffId());
    }
}
