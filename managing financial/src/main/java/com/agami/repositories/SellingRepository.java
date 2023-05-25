package com.agami.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.agami.entities.Report;
import com.agami.entities.Selling;

public interface SellingRepository extends JpaRepository<Selling, Long> {
	
}
