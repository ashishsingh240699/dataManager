package com.agami.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.agami.entities.Admin;
import com.agami.entities.Expense;
import com.agami.entities.Selling;
import com.agami.repositories.AdminRepository;
import com.agami.repositories.ExpenseRepository;
import com.agami.repositories.SellingRepository;

@Controller
public class ExpenseController {
	@Autowired
	private ExpenseRepository expenseRepository;
	@Autowired
	private AdminRepository adminRepository;
	@Autowired
	private SellingRepository sellingRepository;

	@RequestMapping("/")
	public String viewIndex() {
		return "index";
	}

	@RequestMapping("/adminControlls")
	public String showIndex(@RequestParam("username") String username, @RequestParam("password") String password,
			Model model) {
		Admin admin = adminRepository.findAdminByUsername(username).get();
		if (admin.getPassword().equals(password)) {
			return "adminControlls";
		} else {
			model.addAttribute("msg", "Invalid");
			return "adminLoginPage";
		}

	}

	@RequestMapping("/viewLoginAdmin")
	public String viewAdminlogin() {
		return "adminLoginPage";
	}

	@RequestMapping("/expense")
	public String viewExpensePage() {
		return "expensePage";
	}

	@RequestMapping("/saveExpense")
	public String saveExpense(@ModelAttribute("expense") Expense expense, Model model) {
		expenseRepository.save(expense);
		model.addAttribute("msg", "Expense Added");
		return "expensePage";
	}

	@RequestMapping("/sell")
	public String sell() {
		return "sellPage";
	}

	@RequestMapping("/sellProduct")
	public String sellProduct(@ModelAttribute("selling") Selling selling, Model model) {
		try {
			Expense expense = expenseRepository.findExpenseByVal(selling.getVal()).get();
			if (expense.getVal().equals(selling.getVal())) {
				sellingRepository.save(selling);
				model.addAttribute("msg", "product is sold");
				return "invoicePage";
			}
		} catch (Exception e) {
			model.addAttribute("msg", "product id is not matched with db");
			return "sellPage";
		}
		return "sellPage";
	}

}
