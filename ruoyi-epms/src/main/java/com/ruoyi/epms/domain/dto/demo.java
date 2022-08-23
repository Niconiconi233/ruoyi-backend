package com.ruoyi.epms.domain.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class demo {

    public demo() {
        this.name = "丁瑞";
        this.sex = "男";
        this.sf = "正式员工";
        this.type = "身份证";
        this.edu = "本科";
        this.face = "党员";
        this.corp = "xx联社";
        this.no = "530111xxxxxxxxxxxx2154";
    }

    private String name;
    private String sex;
    private String sf;
    private String type;
    private String edu;
    private String face;
    private String corp;

    private String no;
}
