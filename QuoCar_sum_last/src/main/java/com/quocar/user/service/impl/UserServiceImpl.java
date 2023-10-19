package com.quocar.user.service.impl;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quocar.user.dao.UserDao;
import com.quocar.user.service.UserService;
import com.quocar.user.vo.UserVo;

@Service
public class UserServiceImpl implements UserService {

    private final UserDao userDao;

    @Autowired
    public UserServiceImpl(UserDao userDao) {
        this.userDao = userDao;
    }

    @Override
    public int register(HashMap<String, Object> map) {
        // 사용자 등록 로직 구현
        int result = userDao.insertUser(map); // 사용자 정보를 데이터베이스에 저장
        return result;
    }

    @Override
    public boolean checkIdDuplication(HashMap<String, Object> map) {
        // 아이디 중복 확인 로직 구현
        return userDao.checkIdDuplication(map); // 데이터베이스에서 아이디 중복 여부 확인
    }

	@Override
	public String loginCheck(UserVo vo, HttpSession session) {
		String name = userDao.loginCheck(vo);
		 if (name != null) { // 세션 변수 저장
		  session.setAttribute("userid", vo.getUserid());
		  session.setAttribute("name", name);
		}
		 return name; 
		}

		@Override
		public void logout(HttpSession session) {
		 session.invalidate(); // 세션 초기화
   }
}