package com.greenart.it_market.common;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@RestController
public class FileAPIController {
    @GetMapping("/images/{type}/{filename}")
    public ResponseEntity<Resource> getImage(
        @PathVariable String type, @PathVariable String filename, HttpServletRequest request) {
        Path folderLocation = Paths.get("/home/itmarket/images/"+type); // /movie/actor = d:/movie/actor
        Path filePath = folderLocation.resolve(filename); // /movie/actor/default.jpg = d:/movie/actor/default.jpg
        Resource r = null;
        try {
            r = new UrlResource(filePath.toUri());
        }
        catch(Exception e) {
            System.out.println("파일을 찾을 수 없거나, 잘못된 파일 경로입니다.");
        }

        // 파일의 실제 경로에 찾아가서 파일의 유형을 가져온다.
        String contentType = null;
        try {
            request.getServletContext().getMimeType(r.getFile().getAbsolutePath());
            if(contentType == null)
                contentType = "application/octet-stream";
        }
        catch(Exception e) {
            System.out.println("파일을 찾을 수 없거나, 잘못된 파일 경로입니다.");
        }
        return 
            ResponseEntity.ok() // 결과로 200 OK를 설정
            // 파일의 타입을 Spring프레임 워크를 통해 파일 유형을 결정
            .contentType(MediaType.parseMediaType(contentType)) 
            // 파일 이름의 표시 방법을 설정 (다운로드 되는 파일의 이름 설정)
            .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename*=\""+r.getFilename()+"\"")
            // 실제 리소스를 Body에 포함
            .body(r);
    }

    @PostMapping("/images/upload/{type}")
    public Map<String, Object> putImageUpload(
        @PathVariable String type, @RequestPart MultipartFile[] files) {
        Map<String, Object> resultMap = new LinkedHashMap<String, Object>();
        // 업로드 할 파일의 경로 생성
        Path folderLocation = Paths.get("/home/itmarket/images/"+type);
        List<Map<String, Object>> resultList = new ArrayList<Map<String, Object>>();
        for(MultipartFile file : files) {
            String fileName = file.getOriginalFilename();
            String[] fileNameSplit = fileName.split("\\.");
            String ext = fileNameSplit[fileNameSplit.length - 1];

            if(!ext.equalsIgnoreCase("jpg") && !ext.equalsIgnoreCase("png") && !ext.equalsIgnoreCase("gif")) {
                resultMap.put("status", false);
                resultMap.put("message", "이미지 파일 확장자는 jpg, png, gif만 허용합니다.");
                return resultMap;
            }
            Calendar c = Calendar.getInstance();
            
            String saveFileName = StringUtils.cleanPath(type+"_"+c.getTimeInMillis()+"."+ext);
            Path target = folderLocation.resolve(saveFileName);
            // 파일 업로드
            try {
                Files.copy(file.getInputStream(), target, StandardCopyOption.REPLACE_EXISTING);
            }
            catch(IOException e) {
                // 파일 업로드 실패
                resultMap.put("status", false);
                resultMap.put("message", e.getMessage());
                return resultMap;
            }
            
            // 파일업로드 성공
            Long fileSize = file.getSize();
            Map<String, Object> result = new LinkedHashMap<String, Object>();
            result.put("file", saveFileName);
            result.put("ext", ext);
            result.put("fileSize", fileSize);
            resultList.add(result);
        }
        resultMap.put("status", true);
        resultMap.put("message", "파일 업로드 완료");
        resultMap.put("files", resultList);
        // resultMap.put("ext", ext);
        // resultMap.put("fileSize", fileSize);
        return resultMap;
    }
}
