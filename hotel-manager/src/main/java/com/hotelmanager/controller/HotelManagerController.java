package com.hotelmanager.controller;


import com.hotelmanager.model.User;
import com.hotelmanager.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HotelManagerController {

    private UserService userService;

    @Autowired
    public void ControllerShoppingList(UserService us) {
        this.userService = us;

    }

    @GetMapping (value = "/")
    public ModelAndView homePage() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("index");
        return modelAndView;
    }

    @GetMapping(value = "/sing-in")
    public ModelAndView singInPage() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("userJSP", new User());
        modelAndView.setViewName("sing-in");
        return modelAndView;
    }

    @GetMapping(value = "/update-user")
    public ModelAndView updateUser() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("userJSP", new User());
        modelAndView.setViewName("check-user");
        return modelAndView;
    }

    @GetMapping(value = "/register-user")
    public ModelAndView registerUser() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("userJSP", new User());
        modelAndView.setViewName("register-user");
        return modelAndView;
    }

    @PostMapping(value = "/add-user")
    public ModelAndView addUser(@ModelAttribute("userJSP") User user)  {
        ModelAndView modelAndView = new ModelAndView();
        if(this.userService.addUser(user)){
            modelAndView.setViewName("done-register");
        }else {
            modelAndView.setViewName("not-add-user");
        }
        modelAndView.addObject("userJSP", user);
        return modelAndView;
    }

    @PostMapping (value = "/user-page")
    public ModelAndView getUser (@ModelAttribute ("userJSP") User user) {
        ModelAndView modelAndView = new ModelAndView();
        User user1 = userService.getUser(user);
        if (user1 == null) {
            modelAndView.setViewName ("not-register");
        }
        modelAndView.addObject("userJSP", user1);
        return modelAndView;
    }

    @GetMapping (value = "/delete-user")
    public ModelAndView deleteUser (@ModelAttribute ("UserJSP") User user){
        ModelAndView modelAndView =  new ModelAndView();
        modelAndView.addObject("userJSP", user);
        return modelAndView;
    }

    @PostMapping (value = "/delete-done")
    public ModelAndView deleteDone (@ModelAttribute ("UserJSP") User user){
        ModelAndView modelAndView =  new ModelAndView();
        if(userService.deleteUser(user)){
            modelAndView.setViewName("delete-done");
        }
        modelAndView.addObject("userJSP", user);
        return modelAndView;
    }

    @PostMapping(value = "/add-update-user")
    public ModelAndView addUpdateUser(@ModelAttribute("userJSP") User user)  {
        ModelAndView modelAndView = new ModelAndView();
        if(this.userService.updateUser(user)){
            modelAndView.setViewName("done-update");
        }else {
            modelAndView.setViewName("not-update-user");
        }
        modelAndView.addObject("userJSP", user);
        return modelAndView;
    }

    @PostMapping(value = "/check-user")
    public ModelAndView checkUser(@ModelAttribute("userJSP") User user1, User user2)  {
        ModelAndView modelAndView = new ModelAndView();
        Long id = this.userService.getId(user1);
        if (id == null){
            modelAndView.setViewName("not-register");
        }

        modelAndView.addObject("userJSP", user2);
        return modelAndView;
    }


}
