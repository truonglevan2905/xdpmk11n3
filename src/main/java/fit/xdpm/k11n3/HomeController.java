package fit.xdpm.k11n3;



import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.BangDiaDAO;
import dao.KhachHangDAO;
import dao.TieuDeDAO;
import model.BangDia;
import model.KhachHang;
import model.TuaDia;
 

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	private TieuDeDAO td;
	@Autowired
	private BangDiaDAO bd;
	@Autowired
	private KhachHangDAO kh;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String login() {
		return "dangnhap";
	}
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home() {
		return "trangchu";
	}
	@RequestMapping(value="/thuetra")
	public String thuetra() {
		return "chualam";
	}
	@RequestMapping(value="/thuedia")
	public String thuedia() {
		return "thuedia";
	}
	@RequestMapping(value="/tradia")
	public String tradia() {
		return "chualam";
	}
	@RequestMapping(value="/tinhtrangdia")
	public String tinhtrangdia() {
		return "chualam";
	}
	@RequestMapping(value="/khachhang")
	public String khachhang(Model m) {
		List<KhachHang>list=new ArrayList<KhachHang>();
		list=kh.getallkhachhang();
		m.addAttribute("list",list);
		return "qlykhachhang";
	}
	@RequestMapping(value="/themkh")
	public String themkh() {
		return "chualam";
	}
	@RequestMapping(value="/suakh")
	public String suakh() {
		return "chualam";
	}
	@RequestMapping(value="/xoakh")
	public String xoakh() {
		return "chualam";
	}
	@RequestMapping(value="/tuadia")
	public String tuadia(Model m) {
		List<TuaDia>tuadia=new ArrayList<TuaDia>();
		tuadia=td.getalltuadia();
		m.addAttribute("tua",tuadia);
		return "qlytuadia";
	}
	@RequestMapping(value="/bangdia")
	public String bangdia(Model m) {
		List<TuaDia>list=new ArrayList<TuaDia>();
		list=td.getalltuadia();
		List<BangDia>list1=new ArrayList<BangDia>();
		list1=bd.getallbangdia();
		m.addAttribute("list",list);
		m.addAttribute("list1",list1);
		return "qlydiaton";
	}
	@RequestMapping(value="/themdia")
	public String themdia() {
		return "chualam";
	}
	@RequestMapping(value="/xoadia")
	public String xoadia() {
		return "chualam";
	}
	@RequestMapping(value="/tratre")
	public String tratre() {
		return "chualam";
	}
	@RequestMapping(value="/datdia")
	public String datdia() {
		return "chualam";
	}
	@RequestMapping(value="/baocaokhach")
	public String baocaokhach() {
		return "baocaokhachhang";
	}
	@RequestMapping(value="/baocaotua")
	public String baocaotua() {
		return "baocaotrangthai";
	}
	@RequestMapping(value="/baocaokhachquahan")
	public String baocaokhachquahan() {
		return "baocaokhachhang";
	}
	@RequestMapping(value="/baocaokhachphitre")
	public String baocaokhachphitre() {
		return "baocaokhachhang";
	}
	@RequestMapping(value="/capnhatthoigian")
	public String capnhatthoigian() {
		return "capnhatdia";
	}
	@RequestMapping(value="/capnhatgia")
	public String capnhatgia() {
		return "capnhatdia";
	}

	
}
