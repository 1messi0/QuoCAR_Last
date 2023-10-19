package com.quocar.user.dao;

import java.util.HashMap;

import com.quocar.user.vo.UserVo;

public interface UserDao {
    // 사용자 등록
    int insertUser(HashMap<String, Object> map);

    // 로그인
    public String loginCheck(UserVo vo);
    
    // 비밀번호 확인
    boolean checkPassword(HashMap<String, Object> map);

    // ID 중복 확인
    boolean checkIdDuplication(HashMap<String, Object> map);
}
