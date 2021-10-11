package brandaoti.sistema.controller;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;


@RestController
@RequestMapping("/")
@CrossOrigin("*")
public class SistemaController {
		
		@RequestMapping(value = {"/","/home"}, produces = "text/plain;charset=UTF-8", method = RequestMethod.GET) // Pagina de Vendas
		public ModelAndView login(@RequestParam(value = "nome", required = false, defaultValue = "Henrique Brandão") String nome) { //Funcao e alguns valores que recebe...
			String link = "index";
			ModelAndView modelAndView = new ModelAndView(link); //JSP que irÃ¡ acessar
			return modelAndView; //retorna a variavel
		}
		
		@RequestMapping(value = "/cv", produces = "text/plain;charset=UTF-8", method = RequestMethod.GET) // Pagina de Vendas
		public ModelAndView cv() { //Funcao e alguns valores que recebe...
			String link = "curriculo";
			ModelAndView modelAndView = new ModelAndView(link); //JSP que irÃ¡ acessar
			return modelAndView; //retorna a variavel
		}
		
}
	
	
	




