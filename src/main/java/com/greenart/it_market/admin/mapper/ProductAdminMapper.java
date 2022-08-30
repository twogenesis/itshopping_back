package com.greenart.it_market.admin.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.greenart.it_market.admin.data.DataRequestVO;
import com.greenart.it_market.admin.data.product.ProductDescriptionVO;
import com.greenart.it_market.admin.data.product.ProductImageVO;
import com.greenart.it_market.admin.data.product.ProductInfoVO;
import com.greenart.it_market.admin.data.product.ProductSummaryVO;

@Mapper
public interface ProductAdminMapper {
    public List<ProductSummaryVO> selectProductSummaryList(DataRequestVO reqVO);
    public Integer selectTotalCnt(DataRequestVO reqVO);
    public Integer selectTotalPage(DataRequestVO reqVO);

    public void insertProductInfo(ProductInfoVO prod);
    public void insertProductDetailCPUInfo(Map<String, Object> data);
    public void insertProductDetailGPUInfo(Map<String, Object> data);
    public void insertProductDetailMBInfo(Map<String, Object> data);
    public void insertProductDetailSSDInfo(Map<String, Object> data);
    public void insertProductDetailHDDInfo(Map<String, Object> data);
    public void insertProductDetailPWRInfo(Map<String, Object> data);
    public void insertProductDetailCASEInfo(Map<String, Object> data);
    public void insertProductDetailKBDInfo(Map<String, Object> data);
    public void insertProductDetailMOUSEInfo(Map<String, Object> data);
    public void insertProductDetailSPKInfo(Map<String, Object> data);
    public void insertProductImages(List<ProductImageVO> imgList);

    public List<String> selectProductImageFileNames(Integer product_seq);
    public void deleteProductInfo(Integer product_seq);
    public void insertProductDescriptions(List<ProductDescriptionVO> list);
}
