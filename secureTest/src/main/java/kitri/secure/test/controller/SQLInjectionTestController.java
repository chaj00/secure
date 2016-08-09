package kitri.secure.test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kitri.secure.test.service.SQLInjectionTestService;

@Controller
public class SQLInjectionTestController {
	@Autowired
	SQLInjectionTestService service;
	@RequestMapping("/test1.do")
	public ModelAndView sqlInjecttionTest1(String id,String pass){
		StringBuffer br=new StringBuffer();
		br.append("ID,PASSWD ��ȸ ���:   " );
		String result = service.sqlInjection(id, pass);
		br.append(result);
		System.out.println(br.toString());
		ModelAndView mav = new ModelAndView();
		mav.addObject("result",br.toString());
		mav.setViewName("/views/index");
		return mav;
	}
}
