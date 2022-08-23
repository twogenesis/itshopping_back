create table if not exists product_info		
(
    pi_seq	int	primary key	not null	auto_increment,
    pi_manufacturer_seq	int	not null	,
    pi_name	varchar(200)		not null	,
    pi_price	int		not null	,
    pi_release_dt	datetime		not null	default current_timestamp,
    pi_detail_cpu	int	null	,
    pi_detail_gpu	int	null	,
    pi_detail_mb	int	null	,
    pi_detail_ssd	int	null	,
    pi_detail_hdd	int	null	,
    pi_detail_pwr	int	null	,
    pi_detail_case	int	null	,
    pi_detail_kbd	int	null	,
    pi_detail_mouse	int	null	,
    pi_detail_spk	int	null	,
    pi_type	int		not null	
);


create table if not exists manufacturer_info		
(
    manufacturer_seq	int	primary key	not null	auto_increment,
    manufacturer_name	varchar(100)		not null	
);
create table if not exists detail_cpu		
(
    detail_cpu_seq	int	primary key	not null	auto_increment,
    detail_cpu_codename	varchar(50)		not null	,
    detail_cpu_socket	varchar(10)		not null	,
    detail_cpu_core	int		not null	default 1,
    detail_cpu_thread	int		not null	default 1,
    detail_cpu_l1_cache	int		not null	,
    detail_cpu_l2_cache	int		not null	,
    detail_cpu_l3_cache	int		not null	,
    detail_cpu_ram_type	varchar(10)		not null	,
    detail_cpu_ram_clock	int		not null	,
    detail_cpu_base_clock	int		not null	,
    detail_cpu_boost_clock	int		not null	,
    detail_cpu_tdp	int		not null	
);
create table if not exists detail_gpu		
(
    detail_gpu_seq	int	primary key	not null	auto_increment,
    detail_gpu_chipset	varchar(20)		not null	,
    detail_gpu_core	int		not null	,
    detail_gpu_vram_type	varchar(10)		not null	,
    detail_gpu_vram_clock	int		not null	,
    detail_gpu_vram_size	int		not null	,
    detail_gpu_base_clock	int		not null	,
    detail_gpu_boost_clock	int		not null	,
    detail_gpu_multi_gpu	varchar(20)		null	,
    detail_gpu_pwr_type	varchar(10)		null	,
    detail_gpu_watts	int		not null	,
    detail_gpu_pwr_watts	int		not null	,
    detail_gpu_interface	varchar(30)		not null	,
    detail_gpu_horz	int		not null	,
    detail_gpu_vert	int		not null	,
    detail_gpu_height	int		not null	,
    detail_gpu_slots	int		not null	

);
create table if not exists detail_mb		
(
    detail_mb_seq	int	primary key	not null	auto_increment,
    detail_mb_socket	varchar(10)		not null	,
    detail_mb_dram_type	varchar(10)		not null	,
    detail_mb_dram_spd	int		not null	,
    detail_mb_dram_slots	int		not null	default 2,
    detail_mb_form	varchar(10)		not null	,
    detail_mb_vertical	int		not null	,
    detail_mb_horz	int		not null	,
    detail_mb_pwr_phase	varchar(10)		not null	,
    detail_mb_hdmi	int		null	,
    detail_mb_dvi	int		null	,
    detail_mb_dsub	int		null	,
    detail_mb_dp	int		null	,
    detail_mb_wifi	int		null	,
    detail_mb_rj45	int		null	,
    detail_mb_pci_ver	varchar(20)		not null	,
    detail_mb_pci	int		not null	,
    detail_mb_m2	int		null	,
    detail_mb_m2_type	varchar(20)		null	,
    detail_mb_m2_size	int		null	,
    detail_mb_sata_cnt	int		null	,
    detail_mb_usb20	int		null	,
    detail_mb_usb30	int		null	,
    detail_mb_usb31	int		null	,
    detail_mb_usb32	int		null	,
    detail_mb_usbc	int		null	,
    detail_mb_thunderbolt3	int		null	,
    detail_mb_thunderbolt4	int		null	,
    detail_mb_thunderbolt5	int		null	
);
create table if not exists detail_ssd		
(
    detail_ssd_seq	int	primary key	not null	auto_increment,
    detail_ssd_interface	varchar(20)		not null	,
    detail_ssd_iops	int		not null	,
    detail_ssd_read_spd	int		not null	,
    detail_ssd_write_spd	int		not null	,
    detail_ssd_volume_size	int		not null	,
    detail_ssd_dram_size	int		null	,
    detail_ssd_density	varchar(10)		not null	

);
create table if not exists detail_hdd		
(
    detail_hdd_seq	int	primary key	not null	auto_increment,
    detail_hdd_volume_size	int		not null	,
    detail_hdd_buffer_size	int		not null	,
    detail_hdd_rpm	int		not null	,
    detail_hdd_read_spd	int		not null	,
    detail_hdd_write_spd	int		not null	

);
create table if not exists detail_pwr		
(
    detail_pwr_seq	int	primary key	not null	auto_increment,
    detail_pwr_rated	int		not null	,
    detail_pwr_cert_rate	varchar(10)		not null	,
    detail_pwr_cable_type	varchar(10)		not null	,
    detail_pwr_type	varchar(10)		not null

);
create table if not exists detail_case		
(
    detail_case_seq	int	primary key	not null	auto_increment,
    detail_case_type	varchar(15)		not null	,
    detail_case_board_type	varchar(10)		not null	,
    detail_case_power_type	varchar(10)		not null	,
    detail_case_horz	int		not null	,
    detail_case_vertical	int		not null	,
    detail_case_height	int		not null	,
    detail_case_usb20	int		null	,
    detail_case_usb30	int		null	,
    detail_case_usb31	int		null	,
    detail_case_usb32	int		null	,
    detail_case_usbc	int		null	,
    detail_case_mic	int		null	,
    detail_case_spk	int		null

);
create table if not exists detail_kbd		
(
    detail_kbd_seq	int	primary key	not null	auto_increment,
    detail_kbd_contact_type	varchar(20)		not null	,
    detail_kbd_conn_type	varchar(20)		not null	,
    detail_kbd_shape	varchar(20)		not null	,
    detail_kbd_backlight	varchar(20)		null	,
    detail_kbd_interface	varchar(20)		not null	,
    detail_kbd_key_cnt	int		not null	

);
create table if not exists detail_mouse		
(
    detail_mouse_seq	int	primary key	not null	auto_increment,
    detail_mouse_sensor	varchar(20)		not null	,
    detail_mouse_conn_type	varchar(20)		not null	,
    detail_mouse_dpi	int		not null	,
    detail_mouse_interface	varchar(20)		null	,
    detail_mouse_btns	int		not null	

);
create table if not exists detail_spk		
(
    detail_spk_seq	int	primary key	not null	auto_increment,
    detail_spk_channel	varchar(10)		not null	,
    detail_spk_bluetooth	varchar(10)		null	,
    detail_spk_output	int		not null	

);
create table if not exists product_image		
(
    prod_img_seq	int	primary key	not null	auto_increment,
    prod_img_pi_seq	int	not null	,
    prod_img_order	int		not null,	
    prod_img_file	varchar(255)		not null	,
    prod_img_thumbnail	int		not null	default 0,
    prod_img_reg_dt	datetime		not null	default current_timestamp

);
create table if not exists member_info		
(
    mi_seq	int	primary key	not null	auto_increment,
    mi_id	varchar(16)		not null	,
    mi_pwd	varchar(64)		not null	,
    mi_name	varchar(50)		not null	,
    mi_nickname	varchar(14)		null	,
    mi_phone	varchar(14)		not null	,
    mi_address	varchar(255)		not null	,
    mi_zip_code	int		not null	,
    mi_birth	datetime		not null	,
    mi_gen	int		not null	default 0,
    mi_email	varchar(100)		not null	,
    mi_status	int		not null	default 1,
    mi_reg_dt	datetime		not null default	current_timestamp

);
create table if not exists member_profile_img		
(
    mpi_seq	int	primary key	not null	auto_increment,
    mpi_mi_seq	int	not null	,
    mpi_filename	varchar(255)		not null	,
    mpi_thumb	int		not null	default 0

);
create table if not exists shopping_cart		
(
    sc_seq	int	primary key	not null	auto_increment,
    sc_mi_seq	int		not null	,
    sc_pi_seq	int		not null	,
    sc_count	int		not null	default 1

);
create table if not exists product_comment		
(
    pc_seq	int	primary key	not null	auto_increment,
    pc_mi_seq	int		not null	,
    pc_pi_seq	int		not null	,
    pc_score	int		not null	default 1,
    pc_content	varchar(255)		not null	default 1,
    pc_reg_dt	datetime		not null	default current_timestamp,
    pc_mod_dt	datetime		not null	default current_timestamp

);
create table if not exists product_review		
(
    r_seq	int	primary key	not null	auto_increment,
    r_title	varchar(255)		not null	,
    c_pi_seq	int		not null	,
    c_mi_seq	int		not null	,
    c_reg_dt	datetime		not null	default current_timestamp,
    pc_mod_dt	datetime		not null	default current_timestamp

);
create table if not exists product_review_contents		
(
    prc_seq	int	primary key	not null	auto_increment,
    prc_pr_seq	int		not null	,
    prc_order	int		not null	,
    prc_type	varchar(10)		not null	default 'text',
    prc_coontent	text		not null

);
create table if not exists estimate_info		
(
    ei_seq	int	primary key	not null	auto_increment,
    ei_mi_seq	int	not null	,
    ei_title	varchar(50)		not null	default '견적서',
    ei_reg_dt	datetime		not null	default current_timestamp,
    ei_mod_dt	datetime		not null	default current_timestamp
);
create table if not exists estimate_info_products		
(
    eip_seq	int	primary key	not null	auto_increment,
    eip_pi_seq	int		not null	,
    eip_ei_seq	int		not null	,
    eip_count	int		not null	default 1

);
create table if not exists product_benchmark_info		
(
    pbi_seq	int	primary key	not null	auto_increment,
    pbi_pi_seq	int		not null	,
    pbi_score	int		not null	,
    pbi_reg_dt	datetime		not null	default current_timestamp

);
create table if not exists order_info		
(
    oi_seq	int	primary key	not null	auto_increment,
    oi_id	varchar(12)		not null	,
    oi_mi_seq	int	not null	,
    oi_reg_dt	datetime		not null	default current_timestamp,
    oi_status	int		not null	default 1,
    oi_orderer_name	varchar(50)		not null	,
    oi_orderer_phone	varchar(14)		not null	,
    oi_orderer_address	varchar(200)		not null	,
    oi_orderer_zipcode	varchar(10)		not null	,
    oi_shipping_name	varchar(50)		not null	,
    oi_shipping_phone	varchar(14)		not null	,
    oi_shipping_address	varchar(200)		not null	,
    oi_shipping_zipcode	varchar(10)		not null	,
    oi_request	varchar(100)		not null	,
    oi_price	int		not null	,
    oi_delivery_company	varchar(50)		not null	,
    oi_delivery_no	varchar(20)		not null	,
    oi_delivery_date	datetime		null	

);
create table if not exists order_info_products		
(
    oip_seq	int	primary key	not null	auto_increment,
    oip_oi_seq	int		not null	,
    oip_pi_seq	int		not null	,
    oip_count	int		not null	default 1,
    oip_price	int		not null	

);
create table if not exists discount_products		
(
    dp_seq	int	primary key	not null	auto_increment,
    dp_pi_seq	int	not null	,
    dp_rate	int		not null	,
    dp_start_dt	datetime		not null	default current_timestamp,
    dp_end_dt	datetime		not null	default current_timestamp,
    dp_type	varchar(20)		null	

);
create table if not exists md_recommend_products			
(
    mrp_seq	int	primary key	not null	auto_increment,
    mrp_pi_seq	int	not null	

);

create table member_suspend_info		
(
	msi_seq	int	primary key	not null	auto_increment,
	msi_mi_seq	int	 not null	,
	msi_reason	varchar(100)		not null,	
	msi_reg_dt	datetime		not null	default current_timestamp,
	msi_term	int		not null	default 1

);