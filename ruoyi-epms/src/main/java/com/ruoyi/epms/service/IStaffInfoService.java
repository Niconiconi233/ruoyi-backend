package com.ruoyi.epms.service;

import java.util.List;
import com.ruoyi.epms.domain.StaffInfo;

/**
 * 员工信息管理Service接口
 * 
 * @author yw
 * @date 2022-08-13
 */
public interface IStaffInfoService 
{
    /**
     * 查询员工信息管理
     * 
     * @param id 员工信息管理主键
     * @return 员工信息管理
     */
    public StaffInfo selectStaffInfoById(Long id);

    /**
     * 查询员工信息管理列表
     * 
     * @param staffInfo 员工信息管理
     * @return 员工信息管理集合
     */
    public List<StaffInfo> selectStaffInfoList(StaffInfo staffInfo);

    /**
     * 新增员工信息管理
     * 
     * @param staffInfo 员工信息管理
     * @return 结果
     */
    public int insertStaffInfo(StaffInfo staffInfo);

    /**
     * 修改员工信息管理
     * 
     * @param staffInfo 员工信息管理
     * @return 结果
     */
    public int updateStaffInfo(StaffInfo staffInfo);

    /**
     * 批量删除员工信息管理
     * 
     * @param ids 需要删除的员工信息管理主键集合
     * @return 结果
     */
    public int deleteStaffInfoByIds(Long[] ids);

    /**
     * 删除员工信息管理信息
     * 
     * @param id 员工信息管理主键
     * @return 结果
     */
    public int deleteStaffInfoById(Long id);
}
