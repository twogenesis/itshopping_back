package com.greenart.it_market.admin.data;

import lombok.Data;

@Data
public class DataRequestVO {
    private String keyword;
    private Integer type;
    private Integer order;
    private Integer page;
}
