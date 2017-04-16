package com.sj.goods.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sj.goods.dao.IUserDao;
import com.sj.goods.pojo.User;
import com.sj.goods.service.IUserService;


@Service("userService")
public class UserServiceImpl implements IUserService {
	@Resource
	private IUserDao userDao;
	public User getUserById(int userId) {
		// TODO Auto-generated method stub
		return this.userDao.selectByPrimaryKey(userId);
	}

}
