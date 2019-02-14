  package com.myehr.controllers;



  import com.myehr.constants.MessageConstants;
  import com.myehr.constants.RequestUrlConstants;
  import com.myehr.constants.ViewConstants;
  import org.springframework.stereotype.Controller;
  import org.springframework.ui.Model;
  import org.springframework.ui.ModelMap;
  import org.springframework.web.bind.annotation.GetMapping;
  import org.springframework.web.bind.annotation.RequestMapping;
  import org.springframework.web.bind.annotation.RequestMethod;
  import org.springframework.web.bind.annotation.RequestParam;
  import org.springframework.web.servlet.ModelAndView;

  import java.util.Map;

  @Controller
  @RequestMapping(RequestUrlConstants.indexUrl)
  public class MyEhrEntryController {

      /**
       * The entry point
       * @param model
       * @return index jsp page
       */
      @RequestMapping(method = RequestMethod.GET)
      public String showIndexPage(Model model){
          model.addAttribute("greeting",MessageConstants.indexMsg);
          // model.addAttribute("greeting", "Hello World Again, from Spring 4 MVC");
          return ViewConstants.indexPage;
      }

      @RequestMapping(value = "/login", method = RequestMethod.POST)
      public ModelAndView checkLogin(@RequestParam(value = "error",required = false) String error,
                                     @RequestParam(value = "logout",	required = false) String logout,
                                     @RequestParam Map<String, String> modelR){
          String userNAme=modelR.get("username");
          String password=modelR.get("password");
          System.out.println("user:  "+modelR.get("username"));
          System.out.println("password:  "+modelR.get("password"));
          ModelAndView model=new ModelAndView();
          if(userNAme.equalsIgnoreCase("arun")&&
                  password.equalsIgnoreCase("sebastian")){
              model.addObject("greeting","Welcome");
              model.addObject("user",userNAme);
          }else{
              model.addObject("greeting",MessageConstants.indexMsg);
              model.addObject("user","invalid");
          }

          System.out.println();
          if(error !=null){
              model.addObject("error","Invalid credentials");
          }
          if(logout!=null){
              model.addObject("message","Logged out successfully");
          }

          model.setViewName("welcome");
          return model;
      }

   /* @RequestMapping(method = RequestMethod.GET)
    public String sayHello(ModelMap model) {
        model.addAttribute("greeting", "Hello World from Spring 4 MVC");
        return "welcome";
    }*/

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register(ModelMap model) {
        model.addAttribute("greeting", "Hello World Again, from Spring 4 MVC");
        return "register_tmp";
    }
  }
