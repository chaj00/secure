package board.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import board.dto.BoardDTO;
import board.service.BoardService;
@Controller
public class ListController{
	@Autowired
	BoardService service;
	@RequestMapping(value="/list.do")
	public ModelAndView showList(HttpServletRequest arg0,
			HttpServletResponse arg1) throws Exception {
		ModelAndView mav = new ModelAndView();
		List<BoardDTO> userlist =	service.getDeptList(); 
		mav.addObject("list", userlist);
		mav.setViewName("views/list");
		return mav;
	}

}










