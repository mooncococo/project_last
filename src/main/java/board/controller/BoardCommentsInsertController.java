package board.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import board.model.BoardComments;
import board.model.BoardCommentsDao;

@Controller
public class BoardCommentsInsertController {

    final String command = "insert.com";
    final String gotoPage = "redirect:/list.com";
    @Autowired
    BoardCommentsDao boardCommentsDao; 
    
    @RequestMapping(command)
    public String doAction(BoardComments boardComments) {	

	return null;
    }
    
}
