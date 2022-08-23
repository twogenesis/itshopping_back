package com.greenart.it_market.admin.service;

import java.util.LinkedHashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import com.greenart.it_market.admin.data.DataRequestVO;
import com.greenart.it_market.admin.data.manufacturer.ManufacturerInfoVO;
import com.greenart.it_market.admin.mapper.ManufacturerAdminMapper;

@Service
public class ManufacturerAdminService {
    @Autowired ManufacturerAdminMapper mapper;
    public ResponseEntity<Map<String, Object>> selectManufacturerInfo(DataRequestVO reqVO) {
        Map<String, Object> resultMap = new LinkedHashMap<String, Object>();
        if(reqVO == null) {
            reqVO = new DataRequestVO();
            reqVO.setPage(1);
        }
        else {
            if(reqVO.getPage() == null) reqVO.setPage(1);
        }
        resultMap.put("status", true);
        resultMap.put("count", mapper.selectManufacturerCount(reqVO));
        resultMap.put("pageCount", mapper.selectManufacturerPageCount(reqVO));
        resultMap.put("list", mapper.selectManufacturerInfo(reqVO));
        return new ResponseEntity<Map<String, Object>>(resultMap, HttpStatus.OK);
    }
    public ResponseEntity<Map<String, Object>> insertManufacturerInfo(ManufacturerInfoVO manuVO) {
        Map<String, Object> resultMap = new LinkedHashMap<String, Object>();
        
        mapper.insertManufacturerInfo(manuVO);
        
        
        resultMap.put("status", true);
        resultMap.put("message", "제조사 정보를 추가하였습니다.");
        
        return new ResponseEntity<Map<String, Object>>(resultMap, HttpStatus.OK);
        
    }
    public ResponseEntity<Map<String, Object>> deleteManufacturerInfo(Integer manuSeq) {
        Map<String, Object> resultMap = new LinkedHashMap<String, Object>();

        mapper.deleteManufacturerInfo(manuSeq);

        resultMap.put("status", true);
        resultMap.put("message", "제조사 정보를 삭제하였습니다.");
        return new ResponseEntity<Map<String, Object>>(resultMap, HttpStatus.OK);
    }

    
}
