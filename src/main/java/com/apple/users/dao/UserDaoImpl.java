package com.apple.users.dao;

import com.apple.users.vo.UsersVo;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

/**
 * Created by jinwoo on 2015-01-22.
 */
@Repository
public class UserDaoImpl implements UserDao {
    Logger logger = LogManager.getLogger();

    private SqlSessionTemplate sqlSessionTemplate;

    public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
        this.sqlSessionTemplate = sqlSessionTemplate;
    }

    @Override
    public int register(UsersVo usersVo) {
        usersVo.setPassword(getPw(usersVo.getPassword()));
        int flag = this.sqlSessionTemplate.insert("users.register", usersVo);
        if(flag == 1) {
            String email = usersVo.getUsername();
            flag = this.sqlSessionTemplate.insert("users.registerAuth", email);
        }

        return flag;
    }

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        logger.debug("loadUserByUsername");
        UsersVo usersVo = this.sqlSessionTemplate.selectOne("users.user", email);
        List list = this.sqlSessionTemplate.selectList("users.auth", email);
        HashSet<GrantedAuthority> gratedAuthoritys = new HashSet<GrantedAuthority>();
        for(int i=0; i<list.size(); i++){
            HashMap map = (HashMap) list.get(i);
            String role = (String) map.get("AUTHORITY");
            System.out.println(role);
            gratedAuthoritys.add(new SimpleGrantedAuthority(role));
        }
        usersVo.setGrantedAuthorities(gratedAuthoritys);

        return usersVo;
    }

    public String getPw(String pw) {
        StringBuffer sb = new StringBuffer();
        try {
            MessageDigest md = MessageDigest.getInstance("sha-256");
            byte[] b = md.digest(pw.getBytes("UTF-8"));

            for(int i = 0 ; i < b.length ; i++){
                sb.append(Integer.toString((b[i]&0xff) + 0x100, 16).substring(1));
            }
            System.out.println(sb.toString());
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return sb.toString();
    }
}
