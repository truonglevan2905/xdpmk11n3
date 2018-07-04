package fit.xdpm.k11n3;

import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.KhachHangDAO;
import model.KhachHang;

@Controller
public class KhachHangController {
	@Autowired
 private KhachHangDAO khd;
	@RequestMapping(value="/themkhachhang",method=RequestMethod.POST)
	public String themkhachhang(HttpServletRequest r,Model m) {
		 Random rd=new Random();
		  int m5=rd.nextInt(10)+1;
		  int m1=rd.nextInt(10)+1;
		  int m2=rd.nextInt(10)+1;
		  int m3=rd.nextInt(10)+1;
		  int m4=rd.nextInt(10)+1;
		  String maKH="KH"+m5+""+m1+""+m2+""+m3+""+m4;
		  String diachi=r.getParameter("txtdiachi");
		  String name=r.getParameter("txtname");
		  String dt=r.getParameter("txtdienthoai");
		  KhachHang kh=new KhachHang(maKH,diachi,name,dt);
		  int k=khd.themkhachhang(kh);
		  
		return "redirect:/khachhang";
	}
	@RequestMapping(value="/xoakhachhang/{maKH}")
	public String xoakhachhang(@PathVariable String maKH,Model m) {
		int k=khd.xoakhachhang(maKH);
		return "redirect:/khachhang";
	}
	@RequestMapping(value="/suakhachhang/{maKH}",method=RequestMethod.GET)
	public String suakhachhang(@PathVariable String maKH ,Model m) {
		KhachHang kh=khd.getkhachhang(maKH);
		m.addAttribute("khachhang", kh);
		return "qlkhachhang";
	}
	
}
