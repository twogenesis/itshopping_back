package com.greenart.it_market.admin.service;

import java.util.LinkedHashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.greenart.it_market.admin.data.DataRequestVO;
import com.greenart.it_market.admin.data.product.ProductDescriptionVO;
import com.greenart.it_market.admin.data.product.ProductImageVO;
import com.greenart.it_market.admin.data.product.ProductInsertVO;
import com.greenart.it_market.admin.mapper.ProductAdminMapper;

@Service
public class ProductAdminService {
    @Autowired ProductAdminMapper mapper;
    public ResponseEntity < Map < String, Object >> getProductList(DataRequestVO reqVO) {

        if (reqVO == null) {
            reqVO = new DataRequestVO();
            reqVO.setPage(1);
        } else {
            if (reqVO.getPage() == null) reqVO.setPage(1);
        }

        Map < String, Object > resultMap = new LinkedHashMap < String, Object > ();
        resultMap.put("status", true);
        resultMap.put("page", reqVO.getPage());
        resultMap.put("totalCnt", mapper.selectTotalCnt(reqVO));
        resultMap.put("totalPage", mapper.selectTotalPage(reqVO));
        resultMap.put("list", mapper.selectProductSummaryList(reqVO));

        return new ResponseEntity < Map < String, Object >> (resultMap, HttpStatus.OK);
    }
    @Transactional
    public ResponseEntity < Map < String, Object >> insertProductInfo(ProductInsertVO insVO) {
        Map < String, Object > resultMap = new LinkedHashMap < String, Object > ();
        switch (insVO.getProd().getPi_type()) {
            case 1:
                mapper.insertProductDetailCPUInfo(insVO.getData());
                insVO.getProd().setPi_detail_cpu(Integer.parseInt(insVO.getData().get("detail_cpu_seq").toString()));
                break;
            case 2:
                mapper.insertProductDetailGPUInfo(insVO.getData());
                insVO.getProd().setPi_detail_gpu(Integer.parseInt(insVO.getData().get("detail_gpu_seq").toString()));
                break;
            case 3:
                mapper.insertProductDetailMBInfo(insVO.getData());
                insVO.getProd().setPi_detail_mb(Integer.parseInt(insVO.getData().get("detail_mb_seq").toString()));
                break;
            case 4:
                mapper.insertProductDetailSSDInfo(insVO.getData());
                insVO.getProd().setPi_detail_ssd(Integer.parseInt(insVO.getData().get("detail_ssd_seq").toString()));
                break;
            case 5:
                mapper.insertProductDetailHDDInfo(insVO.getData());
                insVO.getProd().setPi_detail_hdd(Integer.parseInt(insVO.getData().get("detail_hdd_seq").toString()));
                break;
            case 6:
                mapper.insertProductDetailPWRInfo(insVO.getData());
                insVO.getProd().setPi_detail_pwr(Integer.parseInt(insVO.getData().get("detail_pwr_seq").toString()));
                break;
            case 7:
                mapper.insertProductDetailCASEInfo(insVO.getData());
                insVO.getProd().setPi_detail_case(Integer.parseInt(insVO.getData().get("detail_case_seq").toString()));
                break;
            case 8:
                mapper.insertProductDetailKBDInfo(insVO.getData());
                insVO.getProd().setPi_detail_kbd(Integer.parseInt(insVO.getData().get("detail_kbd_seq").toString()));
                break;
            case 9:
                mapper.insertProductDetailMOUSEInfo(insVO.getData());
                insVO.getProd().setPi_detail_mouse(Integer.parseInt(insVO.getData().get("detail_mouse_seq").toString()));
                break;
            case 10:
                mapper.insertProductDetailSPKInfo(insVO.getData());
                insVO.getProd().setPi_detail_spk(Integer.parseInt(insVO.getData().get("detail_spk_seq").toString()));
                break;
        }
        mapper.insertProductInfo(insVO.getProd());
        for (ProductImageVO img: insVO.getImg_list()) {
            img.setProd_img_pi_seq(insVO.getProd().getPi_seq());
        }
        mapper.insertProductImages(insVO.getImg_list());

        for(ProductDescriptionVO desc : insVO.getDesc_list()) {
            desc.setPd_pi_seq(insVO.getProd().getPi_seq());
        }
        mapper.insertProductDescriptions(insVO.getDesc_list());
        
        resultMap.put("status", "true");
        resultMap.put("message", "제품 정보가 추가되었습니다.");
        return new ResponseEntity < Map < String, Object >> (resultMap, HttpStatus.CREATED);
    }
    public ResponseEntity < Map < String, Object >> deleteProductInfo(Integer product_seq) {
        Map < String, Object > resultMap = new LinkedHashMap < String, Object > ();
        mapper.deleteProductInfo(product_seq);
        resultMap.put("status", "true");
        resultMap.put("message", "제품 정보를 삭제하였습니다.");
        return new ResponseEntity < Map < String, Object >> (resultMap, HttpStatus.ACCEPTED);
    }
}