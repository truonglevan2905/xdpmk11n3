package fit.xdpm.k11n3;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.TieuDeDAO;
import model.TieuDe;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	
	@Autowired
	TieuDeDAO td;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {

		List<TieuDe> lst = new ArrayList<TieuDe>();
		lst = td.getAllTieuDe();
		model.addAttribute("lst",lst);
		return "home";
		
		
	}
	@RequestMapping(value="/form")
	public String form() {
		return "form";
	}
	
	@RequestMapping(value="/submit", method=RequestMethod.POST )
	public String submit(HttpServletRequest request) {
		String maTieuDe = request.getParameter("maTieuDe");
		String tenTieuDe = request.getParameter("tenTieuDe");
		String loaiDia = request.getParameter("loaiDia");
		String moTa = request.getParameter("moTa");
		String strthoiGianThue = request.getParameter("thoiGianThue");
		String strgiaThue = request.getParameter("giaThue");
		int thoiGianThue = Integer.parseInt(strthoiGianThue);
		double giaThue = Double.parseDouble(strgiaThue);
		TieuDe t = new TieuDe(maTieuDe,tenTieuDe,loaiDia,moTa,thoiGianThue,giaThue);
		td.insertTieuDe(t);
		return "redirect:/";
	}
}
