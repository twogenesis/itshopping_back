package com.greenart.it_market.admin.data.product;

import lombok.Data;

@Data
public class ProductRequestVO {
    private String keyword;
    private Integer type;
    private Integer order;
    private Integer page;
}
