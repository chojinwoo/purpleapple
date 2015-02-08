package com.apple.users.ctrl;


import com.apple.users.service.UserService;
import com.apple.users.vo.UsersVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by jinwoo on 2015-01-22.
 */
@Controller
public class UsersCtrl {
    @Autowired
    private UserService userService;

    @RequestMapping(value="/users", method = RequestMethod.POST)
    public String users() {
        return "/main";
    }

    @RequestMapping(value="/register", method = RequestMethod.POST)
    public String register(@ModelAttribute("command")UsersVo usersVo) {
        this.userService.register(usersVo);
        return "redirect:/";
    }
}
