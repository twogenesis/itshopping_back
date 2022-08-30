package com.greenart.it_market.admin.data.product;

import java.util.List;
import java.util.Map;

import lombok.Data;

@Data
public class ProductInsertVO {
    private ProductInfoVO prod;
    private Map<String, Object> data;
    private List<ProductImageVO> img_list;
    private List<ProductDescriptionVO> desc_list;
}
