package proj_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import proj_dao.Keb_Dao;
import proj_dto.Keb_Dto;

@Controller
public class Keb_controller {
	@Autowired
	Keb_Dao dao;

	@ResponseBody
	@RequestMapping("/registration")
	public String insert(@ModelAttribute Keb_Dto dto) {
		return dao.insert2(dto);
	}
	@ResponseBody
	@RequestMapping("/fetch")
	public ModelAndView ferch(@RequestParam("reg_id") long reg_id){
		return dao.fetch(reg_id);
	}
}
