package fit.xdpm.k11n3;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.BangDiaDAO;
import model.BangDia;

@Controller
public class aas {
	@Autowired
	 BangDiaDAO bdd;
	@RequestMapping(value="/danhsachtuadia/td1")
	public String danhsachtuadia(@PathVariable String maTieuDe,Model m) {
		
		List<BangDia>ds=new ArrayList<BangDia>();
		ds=bdd.getallbangdia2(maTieuDe);
		m.addAttribute("ds",ds);
		System.out.println("aa");
		return "redirect:/tuadia";
		
	}
}
