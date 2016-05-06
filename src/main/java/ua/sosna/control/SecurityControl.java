package ua.sosna.control;

import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by vitaliy on 05.05.16.
 */
@Controller
public class SecurityControl {

    @RequestMapping(value = {"/", "login"}, method = RequestMethod.GET)
    public ModelAndView loginPage(@RequestParam(value = "error", required = false) String error){
        ModelAndView modelAndView = new ModelAndView();

        if (error != null){
            modelAndView.addObject("error", "Error !!!");
        }

        modelAndView.setViewName("login");
        return modelAndView;

    }

    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public String userPage(){
        return "/content/user";
    }

    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String adminPage(){
        return "/content/admin";
    }
}
