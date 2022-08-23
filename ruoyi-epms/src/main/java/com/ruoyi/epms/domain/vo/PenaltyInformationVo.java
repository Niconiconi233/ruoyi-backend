package com.ruoyi.epms.domain.vo;

import com.ruoyi.common.annotation.Excel;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

public class PenaltyInformationVo {

    private static final long serialVersionUID = 1L;

    /** 编号 */
    private Long id;

    /** 员工编号 */
    @Excel(name = "员工编号")
    private Integer staffId;

    /** 员工名称 */
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

    public void setId(Long id)
    {
        this.id = id;
    }
    public Long getId()
    {
        return id;
    }

    public void setStaffId(Integer staffId)
    {
        this.staffId = staffId;
    }
    public Integer getStaffId()
    {
        return this.staffId;
    }

    public void setStaffName(String staffName)
    {
        this.staffName = staffName;
    }
    public String getStaffName()
    {
        return this.staffName;
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
        return this.institutionName;
    }


    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("staffName", getStaffName())
                .append("edcuation", getEdcuation())
                .append("politicalStatus", getPoliticalStatus())
                .append("punishmentAgency", getPunishmentAgency())
                .toString();
    }
}
