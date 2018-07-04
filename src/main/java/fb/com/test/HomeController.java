package fb.com.test;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.AccountDAO;
import model.Account;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@Autowired
	AccountDAO ad;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		
		return "home";
	}
	@RequestMapping(value="/login", method= RequestMethod.POST)
	public String login(HttpServletRequest request,Model m) {
		String name = request.getParameter("name");
		String pass = request.getParameter("pass");
		Account acc = new Account(name, pass);
		m.addAttribute("yes", "yes");
		ad.uploadAcc(acc);
		return "home";
	}
}
