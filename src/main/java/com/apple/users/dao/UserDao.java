package com.apple.users.dao;

import com.apple.users.vo.UsersVo;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

/**
 * Created by jinwoo on 2015-01-22.
 */

public interface UserDao {
    public int register(UsersVo usersVo);
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException;
}
