package com.agami.controller;

import java.util.List;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.agami.entities.Selling;
import com.agami.repositories.SellingRepository;

@Controller
public class SellingController {
	@Autowired
	private SellingRepository sellingRepository;
	
	@RequestMapping("/invoice")
	public String getInvoices(Model model) {
		List<Selling> findAll = sellingRepository.findAll();
		model.addAttribute("selling",findAll);
		return "allSelling";
	}

}
