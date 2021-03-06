package net.apry.invoicefe.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import net.apry.invoicebe.dao.InvoiceDAO;

@Controller
public class PageController {
	
	@Autowired
	
	private InvoiceDAO invoiceDAO;
	
	@RequestMapping(value= { "/","/dashboard","/index" })
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("invoice");
		mv.addObject("title","Dashboard");
		
		mv.addObject("invoices",invoiceDAO.list());
		
		mv.addObject("userClickHome",true);
		return mv;
	}
	
	@RequestMapping(value="/list-invoice")
	public ModelAndView listInvoice() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title","List Invoice");
		mv.addObject("userClickListInvoice",true);
		return mv;
	}
	
//	@RequestMapping(value = "/test")
//	public ModelAndView test(@RequestParam(value = "greeting", required=false)String greeting) {
//		
//		if(greeting == null) {
//			greeting = "Hello";
//		}
//		ModelAndView mv = new ModelAndView("page");
//		mv.addObject("greeting",greeting);
//		return mv;
//	}
	
//	@RequestMapping(value = "/test/{greeting}")
//	public ModelAndView test(@PathVariable("greeting")String greeting) {
//		
//		if(greeting == null) {
//			greeting = "Hello";
//		}
//		ModelAndView mv = new ModelAndView("page");
//		mv.addObject("greeting",greeting);
//		return mv;
//	}
	

}   