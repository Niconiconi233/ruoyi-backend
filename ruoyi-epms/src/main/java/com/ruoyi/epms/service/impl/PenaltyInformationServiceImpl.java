package com.ruoyi.epms.service.impl;

import java.util.List;

import com.ruoyi.common.annotation.DataScope;
import com.ruoyi.epms.domain.vo.PenaltyInformationVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.epms.mapper.PenaltyInformationMapper;
import com.ruoyi.epms.domain.PenaltyInformation;
import com.ruoyi.epms.service.IPenaltyInformationService;

/**
 * 处罚信息Service业务层处理
 * 
 * @author ruoyi
 * @date 2022-08-13
 */
@Service
public class PenaltyInformationServiceImpl implements IPenaltyInformationService 
{
    @Autowired
    private PenaltyInformationMapper penaltyInformationMapper;

    /**
     * 查询处罚信息
     * 
     * @param id 处罚信息主键
     * @return 处罚信息
     */
    @Override
    public PenaltyInformation selectPenaltyInformationById(Long id)
    {
        return penaltyInformationMapper.selectPenaltyInformationById(id);
    }

    /**
     * 查询处罚信息列表
     * 
     * @param penaltyInformation 处罚信息
     * @return 处罚信息
     */
    @Override
    public List<PenaltyInformation> selectPenaltyInformationList(PenaltyInformation penaltyInformation)
    {
        return penaltyInformationMapper.selectPenaltyInformationList(penaltyInformation);
    }

    /**
     * 查询处罚信息列表
     *
     * @param penaltyInformation 处罚信息
     * @return 处罚信息
     */
    @Override
    @DataScope(deptAlias = "p", userAlias = "p")
    public List<PenaltyInformationVo> selectPenaltyInformationVoList(PenaltyInformation penaltyInformation) {
        return penaltyInformationMapper.selectPenaltyInformationVoList(penaltyInformation);
    }

    /**
     * 新增处罚信息
     * 
     * @param penaltyInformation 处罚信息
     * @return 结果
     */
    @Override
    public int insertPenaltyInformation(PenaltyInformation penaltyInformation)
    {
        return penaltyInformationMapper.insertPenaltyInformation(penaltyInformation);
    }

    /**
     * 修改处罚信息
     * 
     * @param penaltyInformation 处罚信息
     * @return 结果
     */
    @Override
    public int updatePenaltyInformation(PenaltyInformation penaltyInformation)
    {
        return penaltyInformationMapper.updatePenaltyInformation(penaltyInformation);
    }

    /**
     * 批量删除处罚信息
     * 
     * @param ids 需要删除的处罚信息主键
     * @return 结果
     */
    @Override
    public int deletePenaltyInformationByIds(Long[] ids)
    {
        return penaltyInformationMapper.deletePenaltyInformationByIds(ids);
    }

    /**
     * 删除处罚信息信息
     * 
     * @param id 处罚信息主键
     * @return 结果
     */
    @Override
    public int deletePenaltyInformationById(Long id)
    {
        return penaltyInformationMapper.deletePenaltyInformationById(id);
    }
}
