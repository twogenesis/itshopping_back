package com.greenart.it_market.admin.data.product;

import java.util.Date;

import lombok.Data;

@Data
public class ProductSummaryVO {
    private Integer seq;
    private String name;
    private Integer price;
    private Integer p_type;
    private Date release_dt;
    private String thumbnail;
}
