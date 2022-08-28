package com.ruoyi.epms.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 员工信息管理对象 staff_info
 * 
 * @author yw
 * @date 2022-08-13
 */
public class StaffInfo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 员工id */
    private Long id;

    /** 姓名 */
    @Excel(name = "姓名")
    private String name;

    /** 性别 */
    @Excel(name = "性别")
    private Long sex;

    /** 身份证 */
    @Excel(name = "身份证")
    private String idCard;

    /** 出生日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "出生日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date birthday;

    /** 机构 */
    @Excel(name = "机构")
    private Long corp;

    /** 干部信息表url */
    @Excel(name = "干部信息表url")
    private String infoUrl;

    /** 创建者 */
    @Excel(name = "创建者")
    private Long userId;

    /** 创建部门 */
    @Excel(name = "创建部门")
    private Long deptId;

    /** 创建时间 */
    @Excel(name = "创建时间")
    private Date createTime;

    /** 修改时间 */
    @Excel(name = "修改时间")
    private Date modifyTime;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setSex(Long sex) 
    {
        this.sex = sex;
    }

    public Long getSex() 
    {
        return sex;
    }
    public void setIdCard(String idCard) 
    {
        this.idCard = idCard;
    }

    public String getIdCard() 
    {
        return idCard;
    }
    public void setBirthday(Date birthday) 
    {
        this.birthday = birthday;
    }

    public Date getBirthday() 
    {
        return birthday;
    }
    public void setCorp(Long corp) 
    {
        this.corp = corp;
    }

    public Long getCorp() 
    {
        return corp;
    }
    public void setInfoUrl(String infoUrl) 
    {
        this.infoUrl = infoUrl;
    }

    public String getInfoUrl() 
    {
        return infoUrl;
    }

    public void setUserId(Long id) {
        this.userId = id;
    }
    public Long getUserId() {
        return userId;
    }

    public void setDeptId(Long deptId) {
        this.deptId = deptId;
    }
    public Long getDeptId() {
        return deptId;
    }

    @Override
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
    @Override
    public Date getCreateTime() {
        return createTime;
    }

    public void setModifyTime(Date modifyTime) {
        this.modifyTime = modifyTime;
    }
    public Date getModifyTime() {
        return modifyTime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("name", getName())
            .append("sex", getSex())
            .append("idCard", getIdCard())
            .append("birthday", getBirthday())
            .append("corp", getCorp())
            .append("infoUrl", getInfoUrl())
            .toString();
    }
}
