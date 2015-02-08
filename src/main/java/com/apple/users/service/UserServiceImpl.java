package com.apple.users.service;

import com.apple.users.dao.UserDao;
import com.apple.users.vo.UsersVo;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

/**
 * Created by jinwoo on 2015-01-22.
 */
@Service
public class UserServiceImpl implements UserService, UserDetailsService {
    private UserDao  userDao;

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        return userDao.loadUserByUsername(email);
    }

    @Override
    public int register(UsersVo usersVo) {
        return this.userDao.register(usersVo);
    }
}
