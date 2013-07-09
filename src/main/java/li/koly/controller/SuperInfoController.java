package li.koly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/secure")
public class SuperInfoController {

    @RequestMapping(value = "/list")
    public String info(){
        System.out.println("this is the info page");
        return "info";
    }
}
