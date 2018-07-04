package fit.xdpm.k11n3;

import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.BangDiaDAO;
import dao.TieuDeDAO;
import model.BangDia;
import model.TuaDia;

@Controller
public class BangDiaController {
	@Autowired
	private BangDiaDAO bd;
	@Autowired
	private TieuDeDAO td;
	@RequestMapping(value="/thembangdia",method=RequestMethod.POST)
  public ModelAndView thambangdia(HttpServletRequest r,Model m) {
	  Random rd=new Random();
	  int m5=rd.nextInt(10)+1;
	  int m1=rd.nextInt(10)+1;
	  int m2=rd.nextInt(10)+1;
	  int m3=rd.nextInt(10)+1;
	  int m4=rd.nextInt(10)+1;
	  String madia="MD"+m5+""+m1+""+m2+""+m3+""+m4;
	  String tentuadia=r.getParameter("txttd").toString();
	//  String maTieuDe=td.getmaTieuDe(tentuadia);
	 // TuaDia rt=new TuaDia(maTieuDe);
	  TuaDia rt=new TuaDia();
	  rt=td.gettieude(tentuadia);
	  String tinhtrang=r.getParameter("txttt").toString();
	BangDia dia=new BangDia();
	dia.setMaDia(madia);
	dia.setTd(rt);
	dia.setTinhTrang(tinhtrang);
	 
	int k=bd.thembangdia(dia);
	
	
	return new ModelAndView("redirect:/bangdia");
	  
	  
  }
	@RequestMapping(value="/xoabangdia/{maDia}")
	public String xoabangdia(Model m,@PathVariable String maDia) {
		int k=bd.xoabangdia(maDia);
		return "redirect:/bangdia";
	}
}
