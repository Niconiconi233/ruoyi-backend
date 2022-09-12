package com.ruoyi.epms.service.impl;

import java.util.Date;
import java.util.List;

import com.ruoyi.common.annotation.DataScope;
import com.ruoyi.common.utils.uid.SnowFlake;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.epms.mapper.StaffInfoMapper;
import com.ruoyi.epms.domain.StaffInfo;
import com.ruoyi.epms.service.IStaffInfoService;

/**
 * 员工信息管理Service业务层处理
 * 
 * @author yw
 * @date 2022-08-13
 */
@Service
public class StaffInfoServiceImpl implements IStaffInfoService 
{
    @Autowired
    private StaffInfoMapper staffInfoMapper;

    /**
     * 查询员工信息管理
     * 
     * @param id 员工信息管理主键
     * @return 员工信息管理
     */
    @Override
    public StaffInfo selectStaffInfoById(Long id)
    {
        return staffInfoMapper.selectStaffInfoById(id);
    }

    /**
     * 查询员工信息管理列表
     * 
     * @param staffInfo 员工信息管理
     * @return 员工信息管理
     */
    @Override
    @DataScope(deptAlias = "s", userAlias = "s")
    public List<StaffInfo> selectStaffInfoList(StaffInfo staffInfo)
    {
        return staffInfoMapper.selectStaffInfoList(staffInfo);
    }

    /**
     * 新增员工信息管理
     * 
     * @param staffInfo 员工信息管理
     * @return 结果
     */
    @Override
    public int insertStaffInfo(StaffInfo staffInfo)
    {
        staffInfo.setId(SnowFlake.nextId());
        staffInfo.setCreateTime(new Date());
        return staffInfoMapper.insertStaffInfo(staffInfo);
    }

    /**
     * 修改员工信息管理
     * 
     * @param staffInfo 员工信息管理
     * @return 结果
     */
    @Override
    public int updateStaffInfo(StaffInfo staffInfo)
    {
        staffInfo.setModifyTime(new Date());
        return staffInfoMapper.updateStaffInfo(staffInfo);
    }

    /**
     * 批量删除员工信息管理
     * 
     * @param ids 需要删除的员工信息管理主键
     * @return 结果
     */
    @Override
    public int deleteStaffInfoByIds(Long[] ids)
    {
        return staffInfoMapper.deleteStaffInfoByIds(ids);
    }

    /**
     * 删除员工信息管理信息
     * 
     * @param id 员工信息管理主键
     * @return 结果
     */
    @Override
    public int deleteStaffInfoById(Long id)
    {
        return staffInfoMapper.deleteStaffInfoById(id);
    }
}
