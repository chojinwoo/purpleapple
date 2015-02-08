package com.apple.users.vo;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;
import java.util.HashSet;

/**
 * Created by psn14020 on 2015-01-23.
 */
public class UsersVo implements UserDetails {
    private String email;
    private String password;
    private String name;
    private String birthday;
    private String tel;
    private String reg_date;

    private HashSet<GrantedAuthority> grantedAuthorities;
    private final boolean ACCOUNTNONEXPIRED = true;
    private final boolean ACCOUNTNONLOCKED = true;
    private final boolean CREDENTIALSNONEXPIRED = true;
    private final boolean ENABLED = true;

    public UsersVo() {
    }

    public UsersVo(String email, String password, String name, String birthday, String tel, String reg_date) {

        this.email = email;
        this.password = password;
        this.name = name;
        this.birthday = birthday;
        this.tel = tel;
        this.reg_date = reg_date;
    }

    public String getEmail() {

        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }


    public void setGrantedAuthorities(HashSet<GrantedAuthority> grantedAuthorities) {
        this.grantedAuthorities = grantedAuthorities;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return this.grantedAuthorities;
    }

    public String getPassword() {
        return password;
    }

    @Override
    public String getUsername() {
        return email;
    }

    @Override
    public boolean isAccountNonExpired() {
        return ACCOUNTNONEXPIRED;
    }

    @Override
    public boolean isAccountNonLocked() {
        return ACCOUNTNONLOCKED;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return CREDENTIALSNONEXPIRED;
    }

    @Override
    public boolean isEnabled() {
        return ENABLED;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getReg_date() {
        return reg_date;
    }

    public void setReg_date(String reg_date) {
        this.reg_date = reg_date;
    }
}
