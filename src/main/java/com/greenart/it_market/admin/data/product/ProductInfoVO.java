package com.greenart.it_market.admin.data.product;

import java.util.Date;

import lombok.Data;

@Data
public class ProductInfoVO {
    private Integer pi_seq;
    private Integer pi_manufacturer_seq;
    private String pi_name;
    private Integer pi_price;
    private Date pi_release_dt;
    private Integer pi_detail_cpu;
    private Integer pi_detail_gpu;
    private Integer pi_detail_mb;
    private Integer pi_detail_ssd;
    private Integer pi_detail_hdd;
    private Integer pi_detail_pwr;
    private Integer pi_detail_case;
    private Integer pi_detail_kbd;
    private Integer pi_detail_mouse;
    private Integer pi_detail_spk;
    private Integer pi_type;
}
