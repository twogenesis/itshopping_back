package com.greenart.it_market.admin.api;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.lang.Nullable;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.greenart.it_market.admin.data.DataRequestVO;
import com.greenart.it_market.admin.data.manufacturer.ManufacturerInfoVO;
import com.greenart.it_market.admin.service.ManufacturerAdminService;

@RestController
@RequestMapping("/api/admin/manufacturer")
public class ManufacturerAdminController {
    @Autowired ManufacturerAdminService service;
    @PostMapping("/list")
    public ResponseEntity<Map<String,Object>> getManufacturerList(@RequestBody @Nullable DataRequestVO reqVO) {
        return service.selectManufacturerInfo(reqVO);
    }
    @PostMapping("/add")
    public ResponseEntity<Map<String,Object>> addManufacturerInfo(@RequestBody ManufacturerInfoVO manuVO) {
        return service.insertManufacturerInfo(manuVO);
    }
    @DeleteMapping("/delete")
    public ResponseEntity<Map<String,Object>> deleteManufacturerInfo(@RequestParam Integer manuSeq) {
        return service.deleteManufacturerInfo(manuSeq);
    }
}
