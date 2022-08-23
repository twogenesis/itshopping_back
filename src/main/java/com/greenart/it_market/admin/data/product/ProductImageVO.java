package com.greenart.it_market.admin.data.product;

import lombok.Data;

@Data
public class ProductImageVO {
    private Integer prod_img_pi_seq;
    private Integer prod_img_order;
    private String prod_img_file;
    private Integer prod_img_thumbnail;
}
