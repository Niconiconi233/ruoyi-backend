package com.ruoyi.epms.domain.vo;

import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
public class PenaltyInformationVo extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /** 编号 */
    private Long id;

    /** 员工编号 */
    @Excel(name = "员工名称")
    private String staffName;

    /** 学历 */
    @Excel(name = "学历")
    private Long edcuation;

    /** 政治面貌 */
    @Excel(name = "政治面貌")
    private Long politicalStatus;

    /** 处罚机构 */
    @Excel(name = "处罚机构")
    private Long punishmentAgency;

    /** 被处罚时所在机构名称 */
    @Excel(name = "被处罚时所在机构名称")
    private String institutionName;

    /** 被处罚时所在机构层级 */
    private Long institutionalLevel;

    /** 被处罚时所在机构部门 */
    private String department;

    /** 被处罚时岗位、职务 */
    private String post;

    /** 是否具有理事、监事、高管任职资格 */
    private String qualifications;

    /** 任职资格文件号 */
    private String fileNo;

    /** 任职时间 */
    private String workTime;

    /** 违法违纪基本事实 */
    private String fact;

    /** 处罚依据 */
    private String basis;

    /** 创建人 */
    private Long userId;

    /** 创建机构 */
    private Long deptId;

    /** 创建时间 */
    private Date createTime;

    /** 修改时间 */
    private Date modifyTime;
}
