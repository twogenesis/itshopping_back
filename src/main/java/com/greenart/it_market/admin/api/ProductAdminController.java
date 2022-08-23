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
import com.greenart.it_market.admin.data.product.ProductInsertVO;
import com.greenart.it_market.admin.service.ProductAdminService;

@RestController
@RequestMapping("/api/admin/product")
public class ProductAdminController {
    @Autowired ProductAdminService service;
    @PostMapping("/list")
    public ResponseEntity<Map<String, Object>> getProductList(@RequestBody @Nullable DataRequestVO reqVO) {
        return service.getProductList(reqVO);
    }
    @PostMapping("/add")
    public ResponseEntity<Map<String, Object>> addProductInfo(@RequestBody ProductInsertVO insVO) {
        return service.insertProductInfo(insVO);
    }
    @DeleteMapping("/delete")
    public ResponseEntity<Map<String, Object>> deleteProductInfo(@RequestParam Integer product_seq) {
        return service.deleteProductInfo(product_seq);
    }
}
