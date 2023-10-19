// UserService.java
package com.quocar.user.service;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import com.quocar.user.vo.UserVo;

public interface UserService {
    // 사용자 등록
    int register(HashMap<String, Object> map);

    // 로그인
    public String loginCheck(UserVo vo, HttpSession session);
    
    // 로그아웃
    public void logout(HttpSession session);

    // 아이디 중복 확인
    boolean checkIdDuplication(HashMap<String, Object> map);
}