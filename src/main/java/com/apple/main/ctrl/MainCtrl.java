package com.apple.main.ctrl;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.security.Principal;

@Controller
@SessionAttributes("principal")
public class MainCtrl {
    static final Logger logger = LogManager.getLogger(MainCtrl.class.getName());
    @RequestMapping(value="/", method = RequestMethod.GET)
    public String main(Model model) {
        logger.info("Spring MVC Log4j!");
        return "/main";
    }

    @RequestMapping(value="/main", method = RequestMethod.GET)
    public String loginMain(Model model, Principal principal) {
        model.addAttribute("principal", principal);
        return "/main";
    }

    @RequestMapping(value="/filedLogin", method = RequestMethod.GET)
    public String filedLogin() {
        return "/filedLogin";
    }
}
