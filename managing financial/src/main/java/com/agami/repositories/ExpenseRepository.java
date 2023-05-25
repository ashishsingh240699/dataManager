package com.agami.repositories;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.agami.entities.Expense;

public interface ExpenseRepository extends JpaRepository<Expense, Long> {
	Optional<Expense> findExpenseByVal(String val);
}
