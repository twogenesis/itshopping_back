insert into manufacturer_info(manufacturer_name)
values
('Britz')

insert into detail_cpu(
	 detail_cpu_codename,
	 detail_cpu_socket,
	 detail_cpu_core,
	 detail_cpu_thread,
	 detail_cpu_l1_cache,
	 detail_cpu_l2_cache,
	 detail_cpu_l3_cache,
	 detail_cpu_ram_type,
	 detail_cpu_ram_clock,
	 detail_cpu_base_clock,
	 detail_cpu_boost_clock,
	 detail_cpu_tdp
)
values
('버미어', 'AM4', 6, 12, null, 3, 32,  'DDR4', 3200, 3700, 4600, 65), -- 5600x
('버미어', 'AM4', 6, 12, null, 3, 32,  'DDR4', 3200, 3500, 4400, 65), -- 5600
('엘더레이크', '소켓1700', 6, 12, null, null, 18,  'DDR4/DDR5', 4800, 2500, 4400, 65), -- 12400f
('엘더레이크', '소켓1700', 12, 20, null, null, 25,  'DDR4/DDR5', 3600, 3600, 5000, 125), -- 12700k
('버미어', 'AM4', 8, 16, null, 4, 96,  'DDR4', 3200, 3400, 4500, 105)  -- 5800x3d

insert into product_info(
	pi_manufacturer_seq,pi_name,pi_price,pi_release_dt,pi_detail_cpu,
	pi_detail_gpu,pi_detail_mb,pi_detail_ssd,pi_detail_hdd,
	pi_detail_pwr,pi_detail_case,pi_detail_kbd,
	pi_detail_mouse,pi_detail_spk,pi_type
)
values
(1, '라이젠 5600X', 200000, '2020-11-01', 1, null, null, null, null, null, null, null, null, null, 1),
(1, '라이젠 5600', 180000, '2022-04-01', 2, null, null, null, null, null, null, null, null, null, 1),
(2, 'Core i5 12400F', 200000, '2022-01-01', 3, null, null, null, null, null, null, null, null, null, 1),
(2, 'Core i7 12700K', 550000, '2021-11-01', 4, null, null, null, null, null, null, null, null, null, 1),
(1, '라이젠 5800X3D', 580000, '2022-04-01', 5, null, null, null, null, null, null, null, null, null, 1)

insert into product_image (prod_img_pi_seq, prod_img_order, prod_img_file, prod_img_thumbnail)
values
(1,1,'ryzen_5600x.png', 1),
(2,1,'ryzen_5600.png', 1),
(3,1,'i5_12400f.png', 1),
(4,1,'i7_12700k.png', 1),
(5,1,'ryzen_5800x3d.png', 1)

select * from summary_info_view;
-- summary info
create view summary_info_view as 
select
	a.pi_seq as seq,
	concat(b.manufacturer_name, ' ', a.pi_name) as name,
	a.pi_price as price, a.pi_type as p_type, a.pi_release_dt as release_dt, c.prod_img_file as thumbnail
from product_info a inner join manufacturer_info b
on a.pi_manufacturer_seq = b.manufacturer_seq
left outer join (
	select * from product_image where prod_img_thumbnail = 1
) c
on a.pi_seq = c.prod_img_pi_seq;

-- insert data (transactional) -------------------------------------------------------------------------------

-- case CPU
-- step1
insert into detail_cpu(
	 detail_cpu_codename, detail_cpu_socket, detail_cpu_core, detail_cpu_thread,
	 detail_cpu_l1_cache, detail_cpu_l2_cache, detail_cpu_l3_cache, detail_cpu_ram_type,
	 detail_cpu_ram_clock, detail_cpu_base_clock, detail_cpu_boost_clock, detail_cpu_tdp
)
values
('버미어', 'AM4', 6, 12, null, 3, 32,  'DDR4', 3200, 3700, 4600, 65), -- 5600x
-- step2
insert into product_info(
	pi_manufacturer_seq,pi_name,pi_price,pi_release_dt,pi_detail_cpu,
	pi_detail_gpu,pi_detail_mb,pi_detail_ssd,pi_detail_hdd,
	pi_detail_pwr,pi_detail_case,pi_detail_kbd,
	pi_detail_mouse,pi_detail_spk,pi_type
)
values
(1, '라이젠 5600X', 200000, '2020-11-01', 1, null, null, null, null, null, null, null, null, null, 1)
-- step3
insert into product_image (prod_img_pi_seq, prod_img_order, prod_img_file, prod_img_thumbnail)
values
(1,1,'ryzen_5600x.png', 1)

-- case GPU
-- step1
insert into detail_gpu(
	detail_gpu_chipset,detail_gpu_core,detail_gpu_vram_type,
	detail_gpu_vram_clock,detail_gpu_vram_size,detail_gpu_base_clock,detail_gpu_boost_clock,
	detail_gpu_multi_gpu,detail_gpu_pwr_type,detail_gpu_watts,detail_gpu_pwr_watts,
	detail_gpu_interface,detail_gpu_horz,detail_gpu_vert,detail_gpu_height,detail_gpu_slots
)
values(
	'RTX 3060',3584,'GDDR6',
	15000,12288,1320,1837,
	null,'8x1',180,550,
	'PCIe4.0 x 16', 245, 0, 40, 2
);
-- step2
insert into product_info(
	pi_manufacturer_seq,pi_name,pi_price,pi_release_dt,pi_detail_cpu,
	pi_detail_gpu,pi_detail_mb,pi_detail_ssd,pi_detail_hdd,
	pi_detail_pwr,pi_detail_case,pi_detail_kbd,
	pi_detail_mouse,pi_detail_spk,pi_type
)
values
(4, '지포스 RTX 3060 STORM X Dual OC D6 12GB', 450000, '2021-02-01', null, null, 1, null, null, null, null, null, null, null, 2);
-- step3
insert into product_image (prod_img_pi_seq, prod_img_order, prod_img_file, prod_img_thumbnail)
values
(7,1,'RTX3060_STORM_X_DUAL_OC_D6_12GB.png', 1);

-- case Mother Board
-- step1
insert into detail_mb(
	detail_mb_socket,detail_mb_dram_type,detail_mb_dram_spd,detail_mb_dram_slots,
	detail_mb_form,detail_mb_vertical,detail_mb_horz,detail_mb_pwr_phase,
	detail_mb_hdmi,detail_mb_dvi,detail_mb_dsub,detail_mb_dp,detail_mb_wifi,
	detail_mb_rj45,detail_mb_pci_ver,detail_mb_pci,detail_mb_m2,detail_mb_m2_type,
	detail_mb_m2_size,detail_mb_sata_cnt,detail_mb_usb20,detail_mb_usb30,
	detail_mb_usb31,detail_mb_usb32,detail_mb_usbc,detail_mb_thunderbolt3,
	detail_mb_thunderbolt4,detail_mb_thunderbolt5
)
values (
	'소켓1700','DDR4','5333',4,
	'M-ATX',244,244,'6+2+1',
	1,null,1,2,null,
	1,'PCIe 4.0 x 16', 2, 2, 'PCIe 4.0x4',
	2280, 4, 2, null,
	null,3,1, null, null, null
);
-- step2
insert into product_info(
	pi_manufacturer_seq,pi_name,pi_price,pi_release_dt,pi_detail_cpu,
	pi_detail_gpu,pi_detail_mb,pi_detail_ssd,pi_detail_hdd,
	pi_detail_pwr,pi_detail_case,pi_detail_kbd,
	pi_detail_mouse,pi_detail_spk,pi_type
)
values
(3, 'B660M DS3H D4', 125000, '2022-01-01', null, null, 1, null, null, null, null, null, null, null, 3);
-- step3
insert into product_image (prod_img_pi_seq, prod_img_order, prod_img_file, prod_img_thumbnail)
values
(6,1,'B660M_DS3H_D4.png', 1);

-- case ssd
-- step1
insert into detail_ssd(
	detail_ssd_interface,detail_ssd_iops,detail_ssd_read_spd,detail_ssd_write_spd,
	detail_ssd_volume_size,detail_ssd_dram_size,detail_ssd_density
)
values(
	'M.2 NVMe 1.3c',1000000,7000,5000,
	'1024',1024,'TLC'
);
-- step2
insert into product_info(
	pi_manufacturer_seq,pi_name,pi_price,pi_release_dt,pi_detail_cpu,
	pi_detail_gpu,pi_detail_mb,pi_detail_ssd,pi_detail_hdd,
	pi_detail_pwr,pi_detail_case,pi_detail_kbd,
	pi_detail_mouse,pi_detail_spk,pi_type
)
values
(5, '980 PRO M.2 NVMe 1TB', 175000, '2020-09-01', null, null, null, 1, null, null, null, null, null, null, 4);
-- step3
insert into product_image (prod_img_pi_seq, prod_img_order, prod_img_file, prod_img_thumbnail)
values
(8,1,'980_PRO_M.2_NVME_1TB.png', 1);

-- case hdd
-- step1
insert into detail_hdd(
	detail_hdd_volume_size,detail_hdd_buffer_size,detail_hdd_rpm,detail_hdd_read_spd,detail_hdd_write_spd
)
values(
	2000, 256, 7200, 220, 220
);
-- step2
insert into product_info(
	pi_manufacturer_seq,pi_name,pi_price,pi_release_dt,pi_detail_cpu,
	pi_detail_gpu,pi_detail_mb,pi_detail_ssd,pi_detail_hdd,
	pi_detail_pwr,pi_detail_case,pi_detail_kbd,
	pi_detail_mouse,pi_detail_spk,pi_type
)
values
(6, 'BarraCuda 7200/256M (ST2000DM008, 2TB)', 73000, '2018-10-01', null, null, null, null, 1, null, null, null, null, null, 5);
-- step3
insert into product_image (prod_img_pi_seq, prod_img_order, prod_img_file, prod_img_thumbnail)
values
(9,1,'Barracuda_7200_256_2tb.png', 1);


-- case pwr
-- step1
insert into detail_pwr(
	detail_pwr_rated,detail_pwr_cert_rate,detail_pwr_cable_type,detail_pwr_type
)
values(
	500, '미인증', '케이블일체형', 'ATX'
);
-- step2
insert into product_info(
	pi_manufacturer_seq,pi_name,pi_price,pi_release_dt,pi_detail_cpu,
	pi_detail_gpu,pi_detail_mb,pi_detail_ssd,pi_detail_hdd,
	pi_detail_pwr,pi_detail_case,pi_detail_kbd,
	pi_detail_mouse,pi_detail_spk,pi_type
)
values
(7, 'COOLMAX VISION II 500W', 73000, '2022-03-01', null, null, null, null, null, 1, null, null, null, null, 6);
-- step3
insert into product_image (prod_img_pi_seq, prod_img_order, prod_img_file, prod_img_thumbnail)
values
(10,1,'COOLMAX_VISION_II_500W.png', 1);

-- case pc case
-- step1
insert into detail_case(
	detail_case_type,detail_case_board_type,detail_case_power_type,detail_case_horz,
	detail_case_vertical,detail_case_height,detail_case_usb20,detail_case_usb30,
	detail_case_usb31,detail_case_usb32,detail_case_usbc,detail_case_mic,detail_case_spk
)
values(
	'미들타워','표준-ATX','ATX',230,
	458,410,2,1,
	0,0,0,1,1
);
-- step2
insert into product_info(
	pi_manufacturer_seq,pi_name,pi_price,pi_release_dt,pi_detail_cpu,
	pi_detail_gpu,pi_detail_mb,pi_detail_ssd,pi_detail_hdd,
	pi_detail_pwr,pi_detail_case,pi_detail_kbd,
	pi_detail_mouse,pi_detail_spk,pi_type
)
values
(8, 'G40 시그니처 (블랙)', 55000, '2022-04-01', null, null, null, null, null, null, 1, null, null, null, 7);
-- step3
insert into product_image (prod_img_pi_seq, prod_img_order, prod_img_file, prod_img_thumbnail)
values
(11,1,'G40_Black.png', 1);


-- case keyboard
-- step1
insert into detail_kbd(
	detail_kbd_contact_type,detail_kbd_conn_type,detail_kbd_shape,detail_kbd_backlight,
	detail_kbd_interface,detail_kbd_key_cnt
)
values(
	'멤브레인', '무선 2.4GHz', '일반형', null, 'USB', 106
);
-- step2
insert into product_info(
	pi_manufacturer_seq,pi_name,pi_price,pi_release_dt,pi_detail_cpu,
	pi_detail_gpu,pi_detail_mb,pi_detail_ssd,pi_detail_hdd,
	pi_detail_pwr,pi_detail_case,pi_detail_kbd,
	pi_detail_mouse,pi_detail_spk,pi_type
)
values
(9, 'MK235', 24000, '2016-02-01', null, null, null, null, null, null, null, 1, null, null, 8);
-- step3
insert into product_image (prod_img_pi_seq, prod_img_order, prod_img_file, prod_img_thumbnail)
values
(12,1,'MK235.png', 1);


-- case mouse
-- step1
insert into detail_mouse(
	detail_mouse_sensor,detail_mouse_conn_type,detail_mouse_dpi,detail_mouse_interface,detail_mouse_btns
)
values(
	'광', '유선', 8000, 'USB', 5 
);
-- step2
insert into product_info(
	pi_manufacturer_seq,pi_name,pi_price,pi_release_dt,pi_detail_cpu,
	pi_detail_gpu,pi_detail_mb,pi_detail_ssd,pi_detail_hdd,
	pi_detail_pwr,pi_detail_case,pi_detail_kbd,
	pi_detail_mouse,pi_detail_spk,pi_type
)
values
(9, 'G102 LIGHTSYNC (블랙)', 24000, '2020-05-01', null, null, null, null, null, null, null, null, 1, null, 9);
-- step3
insert into product_image (prod_img_pi_seq, prod_img_order, prod_img_file, prod_img_thumbnail)
values
(13,1,'G102_LIGHTSYNC_BLACK.png', 1);


-- case speker
-- step1
insert into detail_spk(
	detail_spk_channel,detail_spk_bluetooth,detail_spk_output
)
values(
	'2.0', null, 5
);
-- step2
insert into product_info(
	pi_manufacturer_seq,pi_name,pi_price,pi_release_dt,pi_detail_cpu,
	pi_detail_gpu,pi_detail_mb,pi_detail_ssd,pi_detail_hdd,
	pi_detail_pwr,pi_detail_case,pi_detail_kbd,
	pi_detail_mouse,pi_detail_spk,pi_type
)
values
(10, 'Z2200 Cheek', 32000, '2019-11-01', null, null, null, null, null, null, null, null, null, 1, 10);
-- step3
insert into product_image (prod_img_pi_seq, prod_img_order, prod_img_file, prod_img_thumbnail)
values
(14,1,'Z2200_CHEEK.png', 1);