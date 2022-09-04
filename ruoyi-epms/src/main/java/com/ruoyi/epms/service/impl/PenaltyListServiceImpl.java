package com.ruoyi.emps.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.emps.mapper.PenaltyListMapper;
import com.ruoyi.emps.domain.PenaltyList;
import com.ruoyi.emps.service.IPenaltyListService;

/**
 * 处罚类别明细Service业务层处理
 * 
 * @author yw
 * @date 2022-09-04
 */
@Service
public class PenaltyListServiceImpl implements IPenaltyListService 
{
    @Autowired
    private PenaltyListMapper penaltyListMapper;

    /**
     * 查询处罚类别明细
     * 
     * @param id 处罚类别明细主键
     * @return 处罚类别明细
     */
    @Override
    public PenaltyList selectPenaltyListById(Long id)
    {
        return penaltyListMapper.selectPenaltyListById(id);
    }

    /**
     * 查询处罚类别明细列表
     * 
     * @param penaltyList 处罚类别明细
     * @return 处罚类别明细
     */
    @Override
    public List<PenaltyList> selectPenaltyListList(PenaltyList penaltyList)
    {
        return penaltyListMapper.selectPenaltyListList(penaltyList);
    }

    /**
     * 新增处罚类别明细
     * 
     * @param penaltyList 处罚类别明细
     * @return 结果
     */
    @Override
    public int insertPenaltyList(PenaltyList penaltyList)
    {
        penaltyList.setCreateTime(DateUtils.getNowDate());
        return penaltyListMapper.insertPenaltyList(penaltyList);
    }

    /**
     * 修改处罚类别明细
     * 
     * @param penaltyList 处罚类别明细
     * @return 结果
     */
    @Override
    public int updatePenaltyList(PenaltyList penaltyList)
    {
        return penaltyListMapper.updatePenaltyList(penaltyList);
    }

    /**
     * 批量删除处罚类别明细
     * 
     * @param ids 需要删除的处罚类别明细主键
     * @return 结果
     */
    @Override
    public int deletePenaltyListByIds(Long[] ids)
    {
        return penaltyListMapper.deletePenaltyListByIds(ids);
    }

    /**
     * 删除处罚类别明细信息
     * 
     * @param id 处罚类别明细主键
     * @return 结果
     */
    @Override
    public int deletePenaltyListById(Long id)
    {
        return penaltyListMapper.deletePenaltyListById(id);
    }
}
