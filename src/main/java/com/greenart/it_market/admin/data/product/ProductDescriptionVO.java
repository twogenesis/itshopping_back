package com.greenart.it_market.admin.data.product;

import lombok.Data;

@Data
public class ProductDescriptionVO {
    private Integer pd_seq;
    private Integer pd_order;
    private String pd_content;
    private String pd_type;
    private Integer pd_pi_seq;
}
