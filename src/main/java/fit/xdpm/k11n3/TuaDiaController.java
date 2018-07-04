package fit.xdpm.k11n3;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.BangDiaDAO;
import dao.TieuDeDAO;
import model.BangDia;
import model.TuaDia;

@Controller
public class TuaDiaController {
	@Autowired
	private TieuDeDAO tdd;
	@Autowired
	private BangDiaDAO bdd;
	@RequestMapping(value="/themtuadia",method=RequestMethod.GET)
	public String themtuadia(HttpServletRequest r,Model m) {
		 Random rd=new Random();
		  int m5=rd.nextInt(10)+1;
		  int m1=rd.nextInt(10)+1;
		  int m2=rd.nextInt(10)+1;
		  int m3=rd.nextInt(10)+1;
		  int m4=rd.nextInt(10)+1;
		  String matieude="TD"+m5+""+m1+""+m2+""+m3+""+m4;
		  String ten=r.getParameter("txttd");
		  String ld=r.getParameter("txtld");
		  String mt=r.getParameter("txtmt");
		  String tg=r.getParameter("txttg");
		  String gia=r.getParameter("txtgia");
		  TuaDia td=new TuaDia(matieude,ten,ld,mt,Integer.parseInt(tg),Double.parseDouble(gia));
		  int k=tdd.themtuadia(td);
		  
		return "redirect:/tuadia";
		  
		  
	}
	@RequestMapping(value="/xoatuadia/{maTieuDe}")
	public  String xoatuadia(@PathVariable String maTieuDe,Model m) {
		int k=tdd.xoatuadia(maTieuDe);
		return "redirect:/tuadia";
	}
//	@RequestMapping(value="/danhsachtuadia/{maTieuDe}")
//	public String danhsachtuadia(@PathVariable String maTieuDe,Model m) {
//		List<BangDia>ds=new ArrayList<BangDia>();
//		ds=bdd.getallbangdia2(maTieuDe);
//		m.addAttribute("ds",ds);
//		return "redirect:/tuadia";
//		
//	}

}
