package com.ruoyi.epms.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 处罚信息对象 penalty_information
 * 
 * @author ruoyi
 * @date 2022-08-13
 */
public class PenaltyInformation extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 编号 */
    private Long id;

    /** 员工编号 */
    @Excel(name = "员工编号")
    private Long staffId;

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
    private Integer qualifications;

    /** 任职资格文件号 */
    private String fileNo;

    /** 任职时间 */
    private String workTime;

    /** 违法违纪基本事实 */
    private String fact;

    /** 处罚依据 */
    private String basis;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setStaffId(Long staffId) 
    {
        this.staffId = staffId;
    }

    public Long getStaffId() 
    {
        return staffId;
    }
    public void setEdcuation(Long edcuation) 
    {
        this.edcuation = edcuation;
    }

    public Long getEdcuation() 
    {
        return edcuation;
    }
    public void setPoliticalStatus(Long politicalStatus) 
    {
        this.politicalStatus = politicalStatus;
    }

    public Long getPoliticalStatus() 
    {
        return politicalStatus;
    }
    public void setPunishmentAgency(Long punishmentAgency) 
    {
        this.punishmentAgency = punishmentAgency;
    }

    public Long getPunishmentAgency() 
    {
        return punishmentAgency;
    }
    public void setInstitutionName(String institutionName) 
    {
        this.institutionName = institutionName;
    }

    public String getInstitutionName() 
    {
        return institutionName;
    }
    public void setInstitutionalLevel(Long institutionalLevel) 
    {
        this.institutionalLevel = institutionalLevel;
    }

    public Long getInstitutionalLevel() 
    {
        return institutionalLevel;
    }
    public void setDepartment(String department) 
    {
        this.department = department;
    }

    public String getDepartment() 
    {
        return department;
    }
    public void setPost(String post) 
    {
        this.post = post;
    }

    public String getPost() 
    {
        return post;
    }
    public void setQualifications(Integer qualifications) 
    {
        this.qualifications = qualifications;
    }

    public Integer getQualifications() 
    {
        return qualifications;
    }
    public void setFileNo(String fileNo) 
    {
        this.fileNo = fileNo;
    }

    public String getFileNo() 
    {
        return fileNo;
    }
    public void setWorkTime(String workTime) 
    {
        this.workTime = workTime;
    }

    public String getWorkTime() 
    {
        return workTime;
    }
    public void setFact(String fact) 
    {
        this.fact = fact;
    }

    public String getFact() 
    {
        return fact;
    }
    public void setBasis(String basis) 
    {
        this.basis = basis;
    }

    public String getBasis() 
    {
        return basis;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("staffId", getStaffId())
            .append("edcuation", getEdcuation())
            .append("politicalStatus", getPoliticalStatus())
            .append("punishmentAgency", getPunishmentAgency())
            .append("institutionName", getInstitutionName())
            .append("institutionalLevel", getInstitutionalLevel())
            .append("department", getDepartment())
            .append("post", getPost())
            .append("qualifications", getQualifications())
            .append("fileNo", getFileNo())
            .append("workTime", getWorkTime())
            .append("fact", getFact())
            .append("basis", getBasis())
            .toString();
    }
}
