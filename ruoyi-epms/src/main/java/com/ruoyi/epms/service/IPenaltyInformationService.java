package com.ruoyi.epms.service;

import java.util.List;
import com.ruoyi.epms.domain.PenaltyInformation;
import com.ruoyi.epms.domain.vo.PenaltyInformationVo;

/**
 * 处罚信息Service接口
 * 
 * @author ruoyi
 * @date 2022-08-13
 */
public interface IPenaltyInformationService 
{
    /**
     * 查询处罚信息
     * 
     * @param id 处罚信息主键
     * @return 处罚信息
     */
    public PenaltyInformation selectPenaltyInformationById(Long id);

    /**
     * 查询处罚信息列表
     * 
     * @param penaltyInformation 处罚信息
     * @return 处罚信息集合
     */
    public List<PenaltyInformation> selectPenaltyInformationList(PenaltyInformation penaltyInformation);

    /**
     * 查询处罚信息列表
     *
     * @param penaltyInformation 处罚信息
     * @return 处罚信息集合
     */
    public List<PenaltyInformationVo> selectPenaltyInformationVoList(PenaltyInformation penaltyInformation);

    /**
     * 新增处罚信息
     * 
     * @param penaltyInformation 处罚信息
     * @return 结果
     */
    public int insertPenaltyInformation(PenaltyInformation penaltyInformation);

    /**
     * 修改处罚信息
     * 
     * @param penaltyInformation 处罚信息
     * @return 结果
     */
    public int updatePenaltyInformation(PenaltyInformation penaltyInformation);

    /**
     * 批量删除处罚信息
     * 
     * @param ids 需要删除的处罚信息主键集合
     * @return 结果
     */
    public int deletePenaltyInformationByIds(Long[] ids);

    /**
     * 删除处罚信息信息
     * 
     * @param id 处罚信息主键
     * @return 结果
     */
    public int deletePenaltyInformationById(Long id);

    //public void exportPenaltyInformation(Http)
}
