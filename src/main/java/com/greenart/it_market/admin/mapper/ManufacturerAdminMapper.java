package com.greenart.it_market.admin.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.greenart.it_market.admin.data.DataRequestVO;
import com.greenart.it_market.admin.data.manufacturer.ManufacturerInfoVO;

@Mapper
public interface ManufacturerAdminMapper {
    public List<ManufacturerInfoVO> selectManufacturerInfo(DataRequestVO reqVO);
    public Integer selectManufacturerCount(DataRequestVO reqVO);
    public Integer selectManufacturerPageCount(DataRequestVO reqVO);
    public void insertManufacturerInfo(ManufacturerInfoVO manuVO);
    public void deleteManufacturerInfo(Integer manuSeq);
}
