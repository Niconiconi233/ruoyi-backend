package com.ruoyi.emps.mapper;

import java.util.List;
import com.ruoyi.emps.domain.PenaltyList;

/**
 * 处罚类别明细Mapper接口
 * 
 * @author yw
 * @date 2022-09-04
 */
public interface PenaltyListMapper 
{
    /**
     * 查询处罚类别明细
     * 
     * @param id 处罚类别明细主键
     * @return 处罚类别明细
     */
    public PenaltyList selectPenaltyListById(Long id);

    /**
     * 查询处罚类别明细列表
     * 
     * @param penaltyList 处罚类别明细
     * @return 处罚类别明细集合
     */
    public List<PenaltyList> selectPenaltyListList(PenaltyList penaltyList);

    /**
     * 新增处罚类别明细
     * 
     * @param penaltyList 处罚类别明细
     * @return 结果
     */
    public int insertPenaltyList(PenaltyList penaltyList);

    /**
     * 修改处罚类别明细
     * 
     * @param penaltyList 处罚类别明细
     * @return 结果
     */
    public int updatePenaltyList(PenaltyList penaltyList);

    /**
     * 删除处罚类别明细
     * 
     * @param id 处罚类别明细主键
     * @return 结果
     */
    public int deletePenaltyListById(Long id);

    /**
     * 批量删除处罚类别明细
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deletePenaltyListByIds(Long[] ids);
}
