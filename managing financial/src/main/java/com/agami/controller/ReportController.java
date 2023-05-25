package com.agami.controller;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.agami.entities.Expense;
import com.agami.entities.Report;
import com.agami.entities.Selling;
import com.agami.repositories.ExpenseRepository;
import com.agami.repositories.ReportRepository;
import com.agami.repositories.SellingRepository;

@Controller
public class ReportController {
	@Autowired
	private ReportRepository reportRepository;
	
	@Autowired
	private SellingRepository sellingRepository;
	
	@Autowired
	private ExpenseRepository expenseRepository;
	
	@RequestMapping("/reportPage")
	public String viewPageReport(Model model) {
		List<Selling> findAll = sellingRepository.findAll();
		model.addAttribute("Orders", findAll);
		return "orders";
		
	}
	@RequestMapping("/yearly")
	public String total(Model model) {
	List<Report> findAll = reportRepository.findAll();
		double totalP=0;
		Iterator<Report> itr = findAll.iterator();
		while(itr.hasNext()) {
			totalP+=itr.next().getProfit();
			
		}
	    model.addAttribute("profit", totalP);
		return "total";
	}
	
	@RequestMapping("/generateReport")
	public String saveReport(@RequestParam("sellingId") long sellingId,Model model) {
		Selling selling = sellingRepository.findById(sellingId).get();
		Expense expense = expenseRepository.findExpenseByVal(selling.getVal()).get();
		double profit=(selling.getExpenseAmount()-expense.getExpenseAmount());
		Report report =new Report();
		report.setExpense(expense);
		report.setProfit(profit);
		report.setSelling(selling);
		Report save = reportRepository.save(report);
		model.addAttribute("reports", save);
		return "report";
	}
	

}
