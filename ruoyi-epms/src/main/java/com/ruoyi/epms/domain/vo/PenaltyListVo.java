package com.ruoyi.epms.domain.vo;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;

@Data
public class PenaltyListVo {

    private static final long serialVersionUID = 1L;

    /** ID */
    private Long id;

    /** 处罚明细ID */
    private Long penaltyInfoId;

    /** 处罚类型 */
    private String penaltyType;

    /** 处罚子项 */
    private String penaltyData;

    /** 处罚时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date penaltyTime;

    /** 时间长度 */
    private String penaltyRange;

    /** 结束时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date penaltyEnds;
}
