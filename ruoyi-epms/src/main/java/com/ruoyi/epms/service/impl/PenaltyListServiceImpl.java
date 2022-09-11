package com.ruoyi.epms.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.DictUtils;
import com.ruoyi.epms.domain.vo.PenaltyListVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.epms.mapper.PenaltyListMapper;
import com.ruoyi.epms.domain.PenaltyList;
import com.ruoyi.epms.service.IPenaltyListService;

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

    private static final Map<String, String> dictValue2Key = new HashMap<>();
    static {
        dictValue2Key.put("0", "criminal_punishment");
        dictValue2Key.put("1", "administrative_sanction");
        dictValue2Key.put("2", "party_discipline");
        dictValue2Key.put("3", "internal_punishment");
        dictValue2Key.put("4", "other_penalties");
    }

    /**
     * 查询处罚类别明细
     * 
     * @param id 处罚类别明细主键
     * @return 处罚类别明细
     */
    @Override
    public PenaltyListVo selectPenaltyListById(Long id)
    {

        PenaltyListVo vo = penaltyListMapper.selectPenaltyListById(id);
        if (vo.getPenaltyType() != null)
        {
            Map<String, String> dictValue = DictUtils.getDictCacheMap(dictValue2Key.get(vo.getPenaltyType()));
            vo.setPenaltyData(dictValue.get(vo.getPenaltyData()));
        }
        return vo;
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
     * 查询处罚类别明细列表
     *
     * @param penaltyList 处罚类别明细
     * @return 处罚类别明细
     */
    @Override
    public List<PenaltyListVo> selectPenaltyVoList(PenaltyList penaltyList)
    {
        List<PenaltyListVo> list = penaltyListMapper.selectPenaltyVoList(penaltyList);
        for (PenaltyListVo vo : list)
        {
            if (vo.getPenaltyType() == null)
                continue;
            Map<String, String> dictValue = DictUtils.getDictCacheMap(dictValue2Key.get(vo.getPenaltyType()));
            if (dictValue == null)
                continue;
            vo.setPenaltyData(dictValue.get(vo.getPenaltyData()));
        }
        return list;
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
        penaltyList.setModifyTime(DateUtils.getNowDate());
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
