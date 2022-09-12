package com.ruoyi.epms.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.epms.domain.vo.PenaltyListVo;
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
import com.ruoyi.epms.domain.PenaltyList;
import com.ruoyi.epms.service.IPenaltyListService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 处罚类别明细Controller
 * 
 * @author yw
 * @date 2022-09-04
 */
@RestController
@RequestMapping("/epms/data")
public class PenaltyListController extends BaseController
{
    @Autowired
    private IPenaltyListService penaltyListService;

    /**
     * 查询处罚类别明细列表
     */
    @PreAuthorize("@ss.hasPermi('epms:punishment:list')")
    @GetMapping("/list")
    public TableDataInfo list(PenaltyList penaltyList)
    {
        startPage();
        List<PenaltyListVo> list = penaltyListService.selectPenaltyVoList(penaltyList);
        return getDataTable(list);
    }

    /**
     * 导出处罚类别明细列表
     */
    @PreAuthorize("@ss.hasPermi('epms:punishment:export')")
    @Log(title = "处罚类别明细", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, PenaltyList penaltyList)
    {
        List<PenaltyList> list = penaltyListService.selectPenaltyListList(penaltyList);
        ExcelUtil<PenaltyList> util = new ExcelUtil<PenaltyList>(PenaltyList.class);
        util.exportExcel(response, list, "处罚类别明细数据");
    }

    /**
     * 获取处罚类别明细详细信息
     */
    @PreAuthorize("@ss.hasPermi('epms:punishment:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(penaltyListService.selectPenaltyListById(id));
    }

    /**
     * 新增处罚类别明细
     */
    @PreAuthorize("@ss.hasPermi('epms:punishment:add')")
    @Log(title = "处罚类别明细", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody PenaltyList penaltyList)
    {
        return toAjax(penaltyListService.insertPenaltyList(penaltyList));
    }

    /**
     * 修改处罚类别明细
     */
    @PreAuthorize("@ss.hasPermi('epms:punishment:edit')")
    @Log(title = "处罚类别明细", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody PenaltyList penaltyList)
    {
        return toAjax(penaltyListService.updatePenaltyList(penaltyList));
    }

    /**
     * 删除处罚类别明细
     */
    @PreAuthorize("@ss.hasPermi('epms:punishment:remove')")
    @Log(title = "处罚类别明细", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(penaltyListService.deletePenaltyListByIds(ids));
    }
}
