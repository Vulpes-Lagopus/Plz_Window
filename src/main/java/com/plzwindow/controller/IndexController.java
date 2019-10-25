package main.java.com.plzwindow.controller;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

//------------------------------------
import org.apache.log4j.Logger;//로그객체에 관련된 클래스
//-----------------------------------
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import main.java.com.plzwindow.domain.dao.BoardDAO;
import main.java.com.plzwindow.domain.BoardCommand;
import main.java.com.plzwindow.util.PagingUtil;

@Controller
public class IndexController {
	
	@RequestMapping("/mainshop/index.do")
	public String process() {
		
		
		return "PlzWindowShop/index.jsp";
	}
}





