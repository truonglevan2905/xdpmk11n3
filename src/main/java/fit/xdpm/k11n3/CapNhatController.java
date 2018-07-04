package fit.xdpm.k11n3;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import dao.TieuDeDAO;

@Controller
public class CapNhatController {
	@Autowired
  private TieuDeDAO tdd;
	
}
