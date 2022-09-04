package com.ruoyi.emps.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 处罚类别明细对象 penalty_list
 * 
 * @author yw
 * @date 2022-09-04
 */
public class PenaltyList extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long id;

    /** 处罚明细ID */
    private Long penaltyInfoId;

    /** 处罚类型 */
    @Excel(name = "处罚类型")
    private Long penaltyType;

    /** 处罚子项 */
    @Excel(name = "处罚子项")
    private Long penaltyData;

    /** 处罚时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "处罚时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date penaltyTime;

    /** 时间长度 */
    @Excel(name = "时间长度")
    private String penaltyRange;

    /** 结束时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "结束时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date penaltyEnds;

    /** 修改时间 */
    private Date modifyTime;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setPenaltyInfoId(Long penaltyInfoId) 
    {
        this.penaltyInfoId = penaltyInfoId;
    }

    public Long getPenaltyInfoId() 
    {
        return penaltyInfoId;
    }
    public void setPenaltyType(Long penaltyType) 
    {
        this.penaltyType = penaltyType;
    }

    public Long getPenaltyType() 
    {
        return penaltyType;
    }
    public void setPenaltyData(Long penaltyData) 
    {
        this.penaltyData = penaltyData;
    }

    public Long getPenaltyData() 
    {
        return penaltyData;
    }
    public void setPenaltyTime(Date penaltyTime) 
    {
        this.penaltyTime = penaltyTime;
    }

    public Date getPenaltyTime() 
    {
        return penaltyTime;
    }
    public void setPenaltyRange(String penaltyRange) 
    {
        this.penaltyRange = penaltyRange;
    }

    public String getPenaltyRange() 
    {
        return penaltyRange;
    }
    public void setPenaltyEnds(Date penaltyEnds) 
    {
        this.penaltyEnds = penaltyEnds;
    }

    public Date getPenaltyEnds() 
    {
        return penaltyEnds;
    }
    public void setModifyTime(Date modifyTime) 
    {
        this.modifyTime = modifyTime;
    }

    public Date getModifyTime() 
    {
        return modifyTime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("penaltyInfoId", getPenaltyInfoId())
            .append("penaltyType", getPenaltyType())
            .append("penaltyData", getPenaltyData())
            .append("penaltyTime", getPenaltyTime())
            .append("penaltyRange", getPenaltyRange())
            .append("penaltyEnds", getPenaltyEnds())
            .append("createTime", getCreateTime())
            .append("modifyTime", getModifyTime())
            .toString();
    }
}
